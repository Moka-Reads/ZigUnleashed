/// Standard library implementation of General Purpose Allocator
/// Can be found at https://github.com/ziglang/zig/blob/0.11.0/lib/std/heap/general_purpose_allocator.zig
const std = @import("std"); // std library
const builtin = @import("builtin"); // builtin library
const log = std.log.scoped(.gpa); // scoped logging for gpa
const math = std.math; // math namespace
const assert = std.debug.assert; // invokes undefined behaviour if result is false
const mem = std.mem; // memory namespace
const Allocator = std.mem.Allocator; // Allocator type
const page_size = std.mem.page_size; // page size depending on OS
const StackTrace = std.builtin.StackTrace; // A type to represent the stack's tracing

/// Integer type for pointing to slots in a small allocation
const SlotIndex = std.meta.Int(.unsigned, math.log2(page_size) + 1);
/// The number of stack trace frames to include in the default test stack trace.
const default_test_stack_trace_frames: usize = if (builtin.is_test) 8 else 4;
/// The number of stack trace frames to include in the default system stack trace.
const default_sys_stack_trace_frames: usize = if (std.debug.sys_can_stack_trace)
    default_test_stack_trace_frames
else
    0;
/// The number of stack trace frames to include in the default stack trace.
const default_stack_trace_frames: usize = switch (builtin.mode) {
    .Debug => default_sys_stack_trace_frames,
    else => 0,
};

pub const Config = struct {
    /// Number of stack frames to capture.
    stack_trace_frames: usize = default_stack_trace_frames,

    /// If true, the allocator will have two fields:
    ///  * `total_requested_bytes` which tracks the total allocated bytes of memory requested.
    ///  * `requested_memory_limit` which causes allocations to return `error.OutOfMemory`
    ///    when the `total_requested_bytes` exceeds this limit.
    /// If false, these fields will be `void`.
    enable_memory_limit: bool = false,

    /// Whether to enable safety checks.
    safety: bool = std.debug.runtime_safety,

    /// Whether the allocator may be used simultaneously from multiple threads.
    thread_safe: bool = !builtin.single_threaded,

    /// What type of mutex you'd like to use, for thread safety.
    /// when specified, the mutex type must have the same shape as `std.Thread.Mutex` and
    /// `DummyMutex`, and have no required fields. Specifying this field causes
    /// the `thread_safe` field to be ignored.
    ///
    /// when null (default):
    /// * the mutex type defaults to `std.Thread.Mutex` when thread_safe is enabled.
    /// * the mutex type defaults to `DummyMutex` otherwise.
    MutexType: ?type = null,

    /// This is a temporary debugging trick you can use to turn segfaults into more helpful
    /// logged error messages with stack trace details. The downside is that every allocation
    /// will be leaked, unless used with retain_metadata!
    never_unmap: bool = false,

    /// This is a temporary debugging aid that retains metadata about allocations indefinitely.
    /// This allows a greater range of double frees to be reported. All metadata is freed when
    /// deinit is called. When used with never_unmap, deliberately leaked memory is also freed
    /// during deinit. Currently should be used with never_unmap to avoid segfaults.
    /// TODO https://github.com/ziglang/zig/issues/4298 will allow use without never_unmap
    retain_metadata: bool = false,

    /// Enables emitting info messages with the size and address of every allocation.
    verbose_log: bool = false,
};

pub const Check = enum { ok, leak };

pub fn GeneralPurposeAllocator(comptime config: Config) type {
    return struct {
        /// It manages memory allocations and deallocations using buckets for small allocations
        /// and a table for large allocations. It supports optional safety checks and metadata retention.
        ///
        /// - `backing_allocator`: The allocator used for obtaining memory pages.
        /// - `buckets`: An optional array of bucket headers for small allocations.
        /// - `large_allocations`: The table for tracking large allocations.
        /// - `small_allocations`: The table for tracking small allocations (optional, depends on safety configuration).
        /// - `empty_buckets`: An optional pointer to the first empty bucket (depends on metadata retention configuration).
        /// - `total_requested_bytes`: The total number of bytes requested from the allocator.
        /// - `requested_memory_limit`: The maximum limit of memory that can be requested.
        /// - `mutex`: The mutex used for thread safety.
        backing_allocator: Allocator = std.heap.page_allocator,
        buckets: [small_bucket_count]?*BucketHeader =
            [1]?*BucketHeader{null} ** small_bucket_count,
        large_allocations: LargeAllocTable = .{},
        small_allocations: if (config.safety) SmallAllocTable else void =
            if (config.safety) .{} else {},
        empty_buckets: if (config.retain_metadata) ?*BucketHeader else void =
            if (config.retain_metadata) null else {},

        total_requested_bytes: @TypeOf(total_requested_bytes_init) =
            total_requested_bytes_init,
        requested_memory_limit: @TypeOf(requested_memory_limit_init) =
            requested_memory_limit_init,

        mutex: @TypeOf(mutex_init) = mutex_init,

        const Self = @This();

        /// This code initializes the variables `total_requested_bytes_init` and `requested_memory_limit_init`.
        /// If `config.enable_memory_limit` is true, `total_requested_bytes_init` is set to 0 and
        /// `requested_memory_limit_init` is set to the maximum value of `usize`.
        /// Otherwise, both variables are left uninitialized.
        const total_requested_bytes_init =
            if (config.enable_memory_limit) @as(usize, 0) else {};
        const requested_memory_limit_init =
            if (config.enable_memory_limit) @as(usize, math.maxInt(usize)) else {};

        /// This code defines a constant `mutex_init` based on the configuration options.
        /// If `config.MutexType` is provided, it returns an empty struct of that type.
        /// If `config.thread_safe` is true, it returns an instance of `std.Thread.Mutex`.
        /// Otherwise, it returns an instance of `DummyMutex`.
        const mutex_init = if (config.MutexType) |T|
            T{}
        else if (config.thread_safe)
            std.Thread.Mutex{}
        else
            DummyMutex{};

        /// A dummy mutex implementation that does nothing.
        const DummyMutex = struct {
            /// Locks the dummy mutex.
            fn lock(_: *DummyMutex) void {}

            /// Unlocks the dummy mutex.
            fn unlock(_: *DummyMutex) void {}
        };

        /// This code defines constants related to stack traces.
        /// - `stack_n`: The number of stack trace frames.
        /// - `one_trace_size`: The size of one stack trace in bytes.
        /// - `traces_per_slot`: The number of stack traces per slot.
        const stack_n = config.stack_trace_frames;
        const one_trace_size = @sizeOf(usize) * stack_n;
        const traces_per_slot = 2;
        pub const Error = mem.Allocator.Error;

        /// Calculates the small bucket count based on the logarithm of the page size.
        const small_bucket_count = math.log2(page_size);

        /// Calculates the largest bucket object size based on the small bucket count.
        const largest_bucket_object_size = 1 << (small_bucket_count - 1);

        /// Represents a small allocation with the requested size and pointer alignment.
        const SmallAlloc = struct {
            /// The size of the allocation in bytes.
            requested_size: usize,
            /// The logarithm base 2 of the pointer alignment.
            log2_ptr_align: u8,
        };

        /// Represents a large allocation with additional metadata.
        const LargeAlloc = struct {
            // The allocated memory bytes.
            bytes: []u8,
            // The size of the allocation requested by the user.
            requested_size: if (config.enable_memory_limit) usize else void,
            // Stack addresses for different trace kinds.
            stack_addresses: [trace_n][stack_n]usize,
            // Indicates whether the allocation has been freed.
            freed: if (config.retain_metadata) bool else void,
            // Log2 of the pointer alignment.
            log2_ptr_align: if (config.never_unmap and config.retain_metadata) u8 else void,
            // Number of traces per slot.
            const trace_n = if (config.retain_metadata) traces_per_slot else 1;
            /// Dumps the stack trace for a given trace kind.
            fn dumpStackTrace(self: *LargeAlloc, trace_kind: TraceKind) void {
                std.debug.dumpStackTrace(self.getStackTrace(trace_kind));
            }

            /// Retrieves the stack trace for a given trace kind.
            fn getStackTrace(self: *LargeAlloc, trace_kind: TraceKind) std.builtin.StackTrace {
                assert(@intFromEnum(trace_kind) < trace_n);
                const stack_addresses = &self.stack_addresses[@intFromEnum(trace_kind)];
                var len: usize = 0;
                while (len < stack_n and stack_addresses[len] != 0) {
                    len += 1;
                }
                return .{
                    .instruction_addresses = stack_addresses,
                    .index = len,
                };
            }

            /// Captures the stack trace for a given trace kind at a specific return address.
            fn captureStackTrace(self: *LargeAlloc, ret_addr: usize, trace_kind: TraceKind) void {
                assert(@intFromEnum(trace_kind) < trace_n);
                const stack_addresses = &self.stack_addresses[@intFromEnum(trace_kind)];
                collectStackTrace(ret_addr, stack_addresses);
            }
        };

        /// `LargeAllocTable` maps `usize` keys to `LargeAlloc` values.
        /// `SmallAllocTable` maps `usize` keys to `SmallAlloc` values.
        const LargeAllocTable = std.AutoHashMapUnmanaged(usize, LargeAlloc);
        const SmallAllocTable = std.AutoHashMapUnmanaged(usize, SmallAlloc);

        // Bucket: In memory, in order:
        // * BucketHeader
        // * bucket_used_bits: [N]u8, // 1 bit for every slot; 1 byte for every 8 slots
        // * stack_trace_addresses: [N]usize, // traces_per_slot for every allocation

        /// Represents the header of a bucket in the GPA allocator.
        const BucketHeader = struct {
            /// Pointer to the previous bucket in the linked list.
            prev: *BucketHeader,
            /// Pointer to the next bucket in the linked list.
            next: *BucketHeader,
            /// Pointer to the start of the memory page allocated for this bucket.
            page: [*]align(page_size) u8,
            /// Index of the next available slot in the bucket.
            alloc_cursor: SlotIndex,
            /// Number of slots used in the bucket.
            used_count: SlotIndex,

            /// Returns a pointer to the used bits for the given index in the bucket.
            fn usedBits(bucket: *BucketHeader, index: usize) *u8 {
                return @as(*u8, @ptrFromInt(@intFromPtr(bucket) + @sizeOf(BucketHeader) + index));
            }

            /// Returns a pointer to the stack trace for the given slot in the bucket.
            fn stackTracePtr(
                bucket: *BucketHeader,
                size_class: usize,
                slot_index: SlotIndex,
                trace_kind: TraceKind,
            ) *[stack_n]usize {
                const start_ptr = @as([*]u8, @ptrCast(bucket)) + bucketStackFramesStart(size_class);
                const addr = start_ptr + one_trace_size * traces_per_slot * slot_index +
                    @intFromEnum(trace_kind) * @as(usize, one_trace_size);
                return @ptrCast(@alignCast(addr));
            }

            /// Captures the stack trace for the given slot in the bucket.
            fn captureStackTrace(
                bucket: *BucketHeader,
                ret_addr: usize,
                size_class: usize,
                slot_index: SlotIndex,
                trace_kind: TraceKind,
            ) void {
                const stack_addresses = bucket.stackTracePtr(size_class, slot_index, trace_kind);
                collectStackTrace(ret_addr, stack_addresses);
            }
        };

        /// Creates an allocator from the given `Self` instance.
        /// The allocator uses the `alloc`, `resize`, and `free` functions provided by `Self`.
        pub fn allocator(self: *Self) Allocator {
            return .{
                .ptr = self,
                .vtable = &.{
                    .alloc = alloc,
                    .resize = resize,
                    .free = free,
                },
            };
        }

        /// Retrieves the stack trace from a given bucket, size class, slot index, and trace kind.
        ///
        /// Parameters
        /// - `bucket`: A pointer to the `BucketHeader` struct.
        /// - `size_class`: The size class of the bucket.
        /// - `slot_index`: The index of the slot within the bucket.
        /// - `trace_kind`: The kind of trace to retrieve.
        ///
        /// Returns
        /// A `StackTrace` struct containing the instruction addresses and the index of the last valid address.
        fn bucketStackTrace(
            bucket: *BucketHeader,
            size_class: usize,
            slot_index: SlotIndex,
            trace_kind: TraceKind,
        ) StackTrace {
            const stack_addresses = bucket.stackTracePtr(size_class, slot_index, trace_kind);
            var len: usize = 0;
            while (len < stack_n and stack_addresses[len] != 0) {
                len += 1;
            }
            return StackTrace{
                .instruction_addresses = stack_addresses,
                .index = len,
            };
        }

        /// Calculates the starting address of the stack frames for a given size class.
        ///
        /// The starting address is calculated by aligning the size of the `BucketHeader` plus the number of used bits in the size class,
        /// to the alignment of `usize`.
        ///
        /// Parameters:
        /// - `size_class`: The size class for which to calculate the starting address of the stack frames.
        ///
        /// Returns:
        /// The starting address of the stack frames.
        fn bucketStackFramesStart(size_class: usize) usize {
            return mem.alignForward(
                usize,
                @sizeOf(BucketHeader) + usedBitsCount(size_class),
                @alignOf(usize),
            );
        }

        /// Calculates the size of a bucket based on the given size class.
        ///
        /// The size of a bucket is determined by dividing the page size by the size class,
        /// and then multiplying it by the number of traces per slot and the number of slots.
        ///
        /// Parameters
        /// - `size_class`: The size class used to calculate the bucket size.
        ///
        /// Returns
        /// The size of the bucket.
        fn bucketSize(size_class: usize) usize {
            const slot_count = @divExact(page_size, size_class);
            return bucketStackFramesStart(size_class) + one_trace_size * traces_per_slot * slot_count;
        }

        /// Calculates the number of used bits for a given size class.
        ///
        /// The `size_class` parameter represents the size of each slot in bytes.
        /// The function calculates the number of slots that can fit in a page,
        /// and then determines the number of bits needed to represent those slots.
        /// If the number of slots is less than 8, only 1 bit is needed.
        /// Otherwise, the number of slots is divided by 8 to get the number of bytes needed.
        ///
        /// Returns the number of used bits.
        fn usedBitsCount(size_class: usize) usize {
            const slot_count = @divExact(page_size, size_class);
            if (slot_count < 8) return 1;
            return @divExact(slot_count, 8);
        }

        fn detectLeaksInBucket(
            bucket: *BucketHeader,
            size_class: usize,
            used_bits_count: usize,
        ) bool {
            var leaks = false;
            var used_bits_byte: usize = 0;
            while (used_bits_byte < used_bits_count) : (used_bits_byte += 1) {
                const used_byte = bucket.usedBits(used_bits_byte).*;
                if (used_byte != 0) {
                    var bit_index: u3 = 0;
                    while (true) : (bit_index += 1) {
                        const is_used = @as(u1, @truncate(used_byte >> bit_index)) != 0;
                        if (is_used) {
                            const slot_index = @as(SlotIndex, @intCast(used_bits_byte * 8 + bit_index));
                            const stack_trace = bucketStackTrace(bucket, size_class, slot_index, .alloc);
                            const addr = bucket.page + slot_index * size_class;
                            log.err("memory address 0x{x} leaked: {}", .{
                                @intFromPtr(addr), stack_trace,
                            });
                            leaks = true;
                        }
                        if (bit_index == math.maxInt(u3))
                            break;
                    }
                }
            }
            return leaks;
        }

        /// Emits log messages for leaks and then returns whether there were any leaks.
        pub fn detectLeaks(self: *Self) bool {
            var leaks = false;
            for (self.buckets, 0..) |optional_bucket, bucket_i| {
                const first_bucket = optional_bucket orelse continue;
                const size_class = @as(usize, 1) << @as(math.Log2Int(usize), @intCast(bucket_i));
                const used_bits_count = usedBitsCount(size_class);
                var bucket = first_bucket;
                while (true) {
                    leaks = detectLeaksInBucket(bucket, size_class, used_bits_count) or leaks;
                    bucket = bucket.next;
                    if (bucket == first_bucket)
                        break;
                }
            }

            var it = self.large_allocations.valueIterator();
            while (it.next()) |large_alloc| {
                if (config.retain_metadata and large_alloc.freed) continue;
                const stack_trace = large_alloc.getStackTrace(.alloc);
                log.err("memory address 0x{x} leaked: {}", .{
                    @intFromPtr(large_alloc.bytes.ptr), stack_trace,
                });
                leaks = true;
            }
            return leaks;
        }

        /// Frees a bucket of memory allocated by the allocator.
        ///
        /// This function takes a pointer to the allocator instance, a pointer to the bucket header,
        /// and the size class of the bucket. It frees the memory associated with the bucket by
        /// calling the `free` function of the backing allocator.
        ///
        /// Parameters
        /// - `self`: A pointer to the allocator instance.
        /// - `bucket`: A pointer to the bucket header.
        /// - `size_class`: The size class of the bucket.
        fn freeBucket(self: *Self, bucket: *BucketHeader, size_class: usize) void {
            const bucket_size = bucketSize(size_class);
            const bucket_slice = @as([*]align(@alignOf(BucketHeader)) u8, @ptrCast(bucket))[0..bucket_size];
            self.backing_allocator.free(bucket_slice);
        }

        fn freeRetainedMetadata(self: *Self) void {
            if (config.retain_metadata) {
                if (config.never_unmap) {
                    // free large allocations that were intentionally leaked by never_unmap
                    var it = self.large_allocations.iterator();
                    while (it.next()) |large| {
                        if (large.value_ptr.freed) {
                            self.backing_allocator.rawFree(large.value_ptr.bytes, large.value_ptr.log2_ptr_align, @returnAddress());
                        }
                    }
                }
                // free retained metadata for small allocations
                if (self.empty_buckets) |first_bucket| {
                    var bucket = first_bucket;
                    while (true) {
                        const prev = bucket.prev;
                        if (config.never_unmap) {
                            // free page that was intentionally leaked by never_unmap
                            self.backing_allocator.free(bucket.page[0..page_size]);
                        }
                        // alloc_cursor was set to slot count when bucket added to empty_buckets
                        self.freeBucket(bucket, @divExact(page_size, bucket.alloc_cursor));
                        bucket = prev;
                        if (bucket == first_bucket)
                            break;
                    }
                    self.empty_buckets = null;
                }
            }
        }

        /// This struct provides a method to flush retained metadata.
        pub usingnamespace if (config.retain_metadata) struct {
            /// Flushes the retained metadata.
            pub fn flushRetainedMetadata(self: *Self) void {
                self.freeRetainedMetadata();
                // also remove entries from large_allocations
                var it = self.large_allocations.iterator();
                while (it.next()) |large| {
                    if (large.value_ptr.freed) {
                        _ = self.large_allocations.remove(@intFromPtr(large.value_ptr.bytes.ptr));
                    }
                }
            }
        } else struct {};

        /// Returns `Check.leak` if there were leaks; `Check.ok` otherwise.
        pub fn deinit(self: *Self) Check {
            const leaks = if (config.safety) self.detectLeaks() else false;
            if (config.retain_metadata) {
                self.freeRetainedMetadata();
            }
            self.large_allocations.deinit(self.backing_allocator);
            if (config.safety) {
                self.small_allocations.deinit(self.backing_allocator);
            }
            self.* = undefined;
            return @as(Check, @enumFromInt(@intFromBool(leaks)));
        }

        fn collectStackTrace(first_trace_addr: usize, addresses: *[stack_n]usize) void {
            if (stack_n == 0) return;
            @memset(addresses, 0);
            var stack_trace = StackTrace{
                .instruction_addresses = addresses,
                .index = 0,
            };
            std.debug.captureStackTrace(first_trace_addr, &stack_trace);
        }

        fn reportDoubleFree(ret_addr: usize, alloc_stack_trace: StackTrace, free_stack_trace: StackTrace) void {
            var addresses: [stack_n]usize = [1]usize{0} ** stack_n;
            var second_free_stack_trace = StackTrace{
                .instruction_addresses = &addresses,
                .index = 0,
            };
            std.debug.captureStackTrace(ret_addr, &second_free_stack_trace);
            log.err("Double free detected. Allocation: {} First free: {} Second free: {}", .{
                alloc_stack_trace, free_stack_trace, second_free_stack_trace,
            });
        }

        fn allocSlot(self: *Self, size_class: usize, trace_addr: usize) Error![*]u8 {
            const bucket_index = math.log2(size_class);
            const first_bucket = self.buckets[bucket_index] orelse try self.createBucket(
                size_class,
                bucket_index,
            );
            var bucket = first_bucket;
            const slot_count = @divExact(page_size, size_class);
            while (bucket.alloc_cursor == slot_count) {
                const prev_bucket = bucket;
                bucket = prev_bucket.next;
                if (bucket == first_bucket) {
                    // make a new one
                    bucket = try self.createBucket(size_class, bucket_index);
                    bucket.prev = prev_bucket;
                    bucket.next = prev_bucket.next;
                    prev_bucket.next = bucket;
                    bucket.next.prev = bucket;
                }
            }
            // change the allocator's current bucket to be this one
            self.buckets[bucket_index] = bucket;

            const slot_index = bucket.alloc_cursor;
            bucket.alloc_cursor += 1;

            var used_bits_byte = bucket.usedBits(slot_index / 8);
            const used_bit_index: u3 = @as(u3, @intCast(slot_index % 8)); // TODO cast should be unnecessary
            used_bits_byte.* |= (@as(u8, 1) << used_bit_index);
            bucket.used_count += 1;
            bucket.captureStackTrace(trace_addr, size_class, slot_index, .alloc);
            return bucket.page + slot_index * size_class;
        }

        fn searchBucket(
            bucket_list: ?*BucketHeader,
            addr: usize,
        ) ?*BucketHeader {
            const first_bucket = bucket_list orelse return null;
            var bucket = first_bucket;
            while (true) {
                const in_bucket_range = (addr >= @intFromPtr(bucket.page) and
                    addr < @intFromPtr(bucket.page) + page_size);
                if (in_bucket_range) return bucket;
                bucket = bucket.prev;
                if (bucket == first_bucket) {
                    return null;
                }
            }
        }

        /// This function assumes the object is in the large object storage regardless
        /// of the parameters.
        fn resizeLarge(
            self: *Self,
            old_mem: []u8,
            log2_old_align: u8,
            new_size: usize,
            ret_addr: usize,
        ) bool {
            const entry = self.large_allocations.getEntry(@intFromPtr(old_mem.ptr)) orelse {
                if (config.safety) {
                    @panic("Invalid free");
                } else {
                    unreachable;
                }
            };

            if (config.retain_metadata and entry.value_ptr.freed) {
                if (config.safety) {
                    reportDoubleFree(ret_addr, entry.value_ptr.getStackTrace(.alloc), entry.value_ptr.getStackTrace(.free));
                    @panic("Unrecoverable double free");
                } else {
                    unreachable;
                }
            }

            if (config.safety and old_mem.len != entry.value_ptr.bytes.len) {
                var addresses: [stack_n]usize = [1]usize{0} ** stack_n;
                var free_stack_trace = StackTrace{
                    .instruction_addresses = &addresses,
                    .index = 0,
                };
                std.debug.captureStackTrace(ret_addr, &free_stack_trace);
                log.err("Allocation size {d} bytes does not match free size {d}. Allocation: {} Free: {}", .{
                    entry.value_ptr.bytes.len,
                    old_mem.len,
                    entry.value_ptr.getStackTrace(.alloc),
                    free_stack_trace,
                });
            }

            // Do memory limit accounting with requested sizes rather than what
            // backing_allocator returns because if we want to return
            // error.OutOfMemory, we have to leave allocation untouched, and
            // that is impossible to guarantee after calling
            // backing_allocator.rawResize.
            const prev_req_bytes = self.total_requested_bytes;
            if (config.enable_memory_limit) {
                const new_req_bytes = prev_req_bytes + new_size - entry.value_ptr.requested_size;
                if (new_req_bytes > prev_req_bytes and new_req_bytes > self.requested_memory_limit) {
                    return false;
                }
                self.total_requested_bytes = new_req_bytes;
            }

            if (!self.backing_allocator.rawResize(old_mem, log2_old_align, new_size, ret_addr)) {
                if (config.enable_memory_limit) {
                    self.total_requested_bytes = prev_req_bytes;
                }
                return false;
            }

            if (config.enable_memory_limit) {
                entry.value_ptr.requested_size = new_size;
            }

            if (config.verbose_log) {
                log.info("large resize {d} bytes at {*} to {d}", .{
                    old_mem.len, old_mem.ptr, new_size,
                });
            }
            entry.value_ptr.bytes = old_mem.ptr[0..new_size];
            entry.value_ptr.captureStackTrace(ret_addr, .alloc);
            return true;
        }

        /// This function assumes the object is in the large object storage regardless
        /// of the parameters.
        fn freeLarge(
            self: *Self,
            old_mem: []u8,
            log2_old_align: u8,
            ret_addr: usize,
        ) void {
            const entry = self.large_allocations.getEntry(@intFromPtr(old_mem.ptr)) orelse {
                if (config.safety) {
                    @panic("Invalid free");
                } else {
                    unreachable;
                }
            };

            if (config.retain_metadata and entry.value_ptr.freed) {
                if (config.safety) {
                    reportDoubleFree(ret_addr, entry.value_ptr.getStackTrace(.alloc), entry.value_ptr.getStackTrace(.free));
                    return;
                } else {
                    unreachable;
                }
            }

            if (config.safety and old_mem.len != entry.value_ptr.bytes.len) {
                var addresses: [stack_n]usize = [1]usize{0} ** stack_n;
                var free_stack_trace = StackTrace{
                    .instruction_addresses = &addresses,
                    .index = 0,
                };
                std.debug.captureStackTrace(ret_addr, &free_stack_trace);
                log.err("Allocation size {d} bytes does not match free size {d}. Allocation: {} Free: {}", .{
                    entry.value_ptr.bytes.len,
                    old_mem.len,
                    entry.value_ptr.getStackTrace(.alloc),
                    free_stack_trace,
                });
            }

            if (!config.never_unmap) {
                self.backing_allocator.rawFree(old_mem, log2_old_align, ret_addr);
            }

            if (config.enable_memory_limit) {
                self.total_requested_bytes -= entry.value_ptr.requested_size;
            }

            if (config.verbose_log) {
                log.info("large free {d} bytes at {*}", .{ old_mem.len, old_mem.ptr });
            }

            if (!config.retain_metadata) {
                assert(self.large_allocations.remove(@intFromPtr(old_mem.ptr)));
            } else {
                entry.value_ptr.freed = true;
                entry.value_ptr.captureStackTrace(ret_addr, .free);
            }
        }

        /// Sets the requested memory limit for the GPA.
        ///
        /// This function sets the requested memory limit for the GPA to the specified `limit`.
        /// The `limit` parameter should be of type `usize`.
        pub fn setRequestedMemoryLimit(self: *Self, limit: usize) void {
            self.requested_memory_limit = limit;
        }

        fn resize(
            ctx: *anyopaque,
            old_mem: []u8,
            log2_old_align_u8: u8,
            new_size: usize,
            ret_addr: usize,
        ) bool {
            const self: *Self = @ptrCast(@alignCast(ctx));
            const log2_old_align = @as(Allocator.Log2Align, @intCast(log2_old_align_u8));
            self.mutex.lock();
            defer self.mutex.unlock();

            assert(old_mem.len != 0);

            const aligned_size = @max(old_mem.len, @as(usize, 1) << log2_old_align);
            if (aligned_size > largest_bucket_object_size) {
                return self.resizeLarge(old_mem, log2_old_align, new_size, ret_addr);
            }
            const size_class_hint = math.ceilPowerOfTwoAssert(usize, aligned_size);

            var bucket_index = math.log2(size_class_hint);
            var size_class: usize = size_class_hint;
            const bucket = while (bucket_index < small_bucket_count) : (bucket_index += 1) {
                if (searchBucket(self.buckets[bucket_index], @intFromPtr(old_mem.ptr))) |bucket| {
                    // move bucket to head of list to optimize search for nearby allocations
                    self.buckets[bucket_index] = bucket;
                    break bucket;
                }
                size_class *= 2;
            } else blk: {
                if (config.retain_metadata) {
                    if (!self.large_allocations.contains(@intFromPtr(old_mem.ptr))) {
                        // object not in active buckets or a large allocation, so search empty buckets
                        if (searchBucket(self.empty_buckets, @intFromPtr(old_mem.ptr))) |bucket| {
                            // bucket is empty so is_used below will always be false and we exit there
                            break :blk bucket;
                        } else @panic("Invalid free");
                    }
                }
                return self.resizeLarge(old_mem, log2_old_align, new_size, ret_addr);
            };
            const byte_offset = @intFromPtr(old_mem.ptr) - @intFromPtr(bucket.page);
            const slot_index = @as(SlotIndex, @intCast(byte_offset / size_class));
            const used_byte_index = slot_index / 8;
            const used_bit_index = @as(u3, @intCast(slot_index % 8));
            const used_byte = bucket.usedBits(used_byte_index);
            const is_used = @as(u1, @truncate(used_byte.* >> used_bit_index)) != 0;
            if (!is_used) {
                if (config.safety) {
                    reportDoubleFree(ret_addr, bucketStackTrace(bucket, size_class, slot_index, .alloc), bucketStackTrace(bucket, size_class, slot_index, .free));
                    @panic("Unrecoverable double free");
                } else unreachable;
            }

            // Definitely an in-use small alloc now.
            if (config.safety) {
                const entry = self.small_allocations.getEntry(@intFromPtr(old_mem.ptr)) orelse @panic("Invalid free");
                if (old_mem.len != entry.value_ptr.requested_size or log2_old_align != entry.value_ptr.log2_ptr_align) {
                    var addresses: [stack_n]usize = [1]usize{0} ** stack_n;
                    var free_stack_trace = StackTrace{
                        .instruction_addresses = &addresses,
                        .index = 0,
                    };
                    std.debug.captureStackTrace(ret_addr, &free_stack_trace);
                    if (old_mem.len != entry.value_ptr.requested_size) {
                        log.err("Allocation size {d} bytes does not match resize size {d}. Allocation: {} Resize: {}", .{
                            entry.value_ptr.requested_size,
                            old_mem.len,
                            bucketStackTrace(bucket, size_class, slot_index, .alloc),
                            free_stack_trace,
                        });
                    }
                    if (log2_old_align != entry.value_ptr.log2_ptr_align) {
                        log.err("Allocation alignment {d} does not match resize alignment {d}. Allocation: {} Resize: {}", .{
                            @as(usize, 1) << @as(math.Log2Int(usize), @intCast(entry.value_ptr.log2_ptr_align)),
                            @as(usize, 1) << @as(math.Log2Int(usize), @intCast(log2_old_align)),
                            bucketStackTrace(bucket, size_class, slot_index, .alloc),
                            free_stack_trace,
                        });
                    }
                }
            }

            const prev_req_bytes = self.total_requested_bytes;
            if (config.enable_memory_limit) {
                const new_req_bytes = prev_req_bytes + new_size - old_mem.len;
                if (new_req_bytes > prev_req_bytes and new_req_bytes > self.requested_memory_limit) {
                    return false;
                }
                self.total_requested_bytes = new_req_bytes;
            }

            const new_aligned_size = @max(new_size, @as(usize, 1) << log2_old_align);
            const new_size_class = math.ceilPowerOfTwoAssert(usize, new_aligned_size);
            if (new_size_class <= size_class) {
                if (old_mem.len > new_size) {
                    @memset(old_mem[new_size..], undefined);
                }
                if (config.verbose_log) {
                    log.info("small resize {d} bytes at {*} to {d}", .{
                        old_mem.len, old_mem.ptr, new_size,
                    });
                }
                if (config.safety) {
                    const entry = self.small_allocations.getEntry(@intFromPtr(old_mem.ptr)).?;
                    entry.value_ptr.requested_size = new_size;
                }
                return true;
            }

            if (config.enable_memory_limit) {
                self.total_requested_bytes = prev_req_bytes;
            }
            return false;
        }

        fn free(
            ctx: *anyopaque,
            old_mem: []u8,
            log2_old_align_u8: u8,
            ret_addr: usize,
        ) void {
            const self: *Self = @ptrCast(@alignCast(ctx));
            const log2_old_align = @as(Allocator.Log2Align, @intCast(log2_old_align_u8));
            self.mutex.lock();
            defer self.mutex.unlock();

            assert(old_mem.len != 0);

            const aligned_size = @max(old_mem.len, @as(usize, 1) << log2_old_align);
            if (aligned_size > largest_bucket_object_size) {
                self.freeLarge(old_mem, log2_old_align, ret_addr);
                return;
            }
            const size_class_hint = math.ceilPowerOfTwoAssert(usize, aligned_size);

            var bucket_index = math.log2(size_class_hint);
            var size_class: usize = size_class_hint;
            const bucket = while (bucket_index < small_bucket_count) : (bucket_index += 1) {
                if (searchBucket(self.buckets[bucket_index], @intFromPtr(old_mem.ptr))) |bucket| {
                    // move bucket to head of list to optimize search for nearby allocations
                    self.buckets[bucket_index] = bucket;
                    break bucket;
                }
                size_class *= 2;
            } else blk: {
                if (config.retain_metadata) {
                    if (!self.large_allocations.contains(@intFromPtr(old_mem.ptr))) {
                        // object not in active buckets or a large allocation, so search empty buckets
                        if (searchBucket(self.empty_buckets, @intFromPtr(old_mem.ptr))) |bucket| {
                            // bucket is empty so is_used below will always be false and we exit there
                            break :blk bucket;
                        } else {
                            @panic("Invalid free");
                        }
                    }
                }
                self.freeLarge(old_mem, log2_old_align, ret_addr);
                return;
            };
            const byte_offset = @intFromPtr(old_mem.ptr) - @intFromPtr(bucket.page);
            const slot_index = @as(SlotIndex, @intCast(byte_offset / size_class));
            const used_byte_index = slot_index / 8;
            const used_bit_index = @as(u3, @intCast(slot_index % 8));
            const used_byte = bucket.usedBits(used_byte_index);
            const is_used = @as(u1, @truncate(used_byte.* >> used_bit_index)) != 0;
            if (!is_used) {
                if (config.safety) {
                    reportDoubleFree(ret_addr, bucketStackTrace(bucket, size_class, slot_index, .alloc), bucketStackTrace(bucket, size_class, slot_index, .free));
                    // Recoverable if this is a free.
                    return;
                } else {
                    unreachable;
                }
            }

            // Definitely an in-use small alloc now.
            if (config.safety) {
                const entry = self.small_allocations.getEntry(@intFromPtr(old_mem.ptr)) orelse
                    @panic("Invalid free");
                if (old_mem.len != entry.value_ptr.requested_size or log2_old_align != entry.value_ptr.log2_ptr_align) {
                    var addresses: [stack_n]usize = [1]usize{0} ** stack_n;
                    var free_stack_trace = StackTrace{
                        .instruction_addresses = &addresses,
                        .index = 0,
                    };
                    std.debug.captureStackTrace(ret_addr, &free_stack_trace);
                    if (old_mem.len != entry.value_ptr.requested_size) {
                        log.err("Allocation size {d} bytes does not match free size {d}. Allocation: {} Free: {}", .{
                            entry.value_ptr.requested_size,
                            old_mem.len,
                            bucketStackTrace(bucket, size_class, slot_index, .alloc),
                            free_stack_trace,
                        });
                    }
                    if (log2_old_align != entry.value_ptr.log2_ptr_align) {
                        log.err("Allocation alignment {d} does not match free alignment {d}. Allocation: {} Free: {}", .{
                            @as(usize, 1) << @as(math.Log2Int(usize), @intCast(entry.value_ptr.log2_ptr_align)),
                            @as(usize, 1) << @as(math.Log2Int(usize), @intCast(log2_old_align)),
                            bucketStackTrace(bucket, size_class, slot_index, .alloc),
                            free_stack_trace,
                        });
                    }
                }
            }

            if (config.enable_memory_limit) {
                self.total_requested_bytes -= old_mem.len;
            }

            // Capture stack trace to be the "first free", in case a double free happens.
            bucket.captureStackTrace(ret_addr, size_class, slot_index, .free);

            used_byte.* &= ~(@as(u8, 1) << used_bit_index);
            bucket.used_count -= 1;
            if (bucket.used_count == 0) {
                if (bucket.next == bucket) {
                    // it's the only bucket and therefore the current one
                    self.buckets[bucket_index] = null;
                } else {
                    bucket.next.prev = bucket.prev;
                    bucket.prev.next = bucket.next;
                    self.buckets[bucket_index] = bucket.prev;
                }
                if (!config.never_unmap) {
                    self.backing_allocator.free(bucket.page[0..page_size]);
                }
                if (!config.retain_metadata) {
                    self.freeBucket(bucket, size_class);
                } else {
                    // move alloc_cursor to end so we can tell size_class later
                    const slot_count = @divExact(page_size, size_class);
                    bucket.alloc_cursor = @as(SlotIndex, @truncate(slot_count));
                    if (self.empty_buckets) |prev_bucket| {
                        // empty_buckets is ordered newest to oldest through prev so that if
                        // config.never_unmap is false and backing_allocator reuses freed memory
                        // then searchBuckets will always return the newer, relevant bucket
                        bucket.prev = prev_bucket;
                        bucket.next = prev_bucket.next;
                        prev_bucket.next = bucket;
                        bucket.next.prev = bucket;
                    } else {
                        bucket.prev = bucket;
                        bucket.next = bucket;
                    }
                    self.empty_buckets = bucket;
                }
            } else {
                @memset(old_mem, undefined);
            }
            if (config.safety) {
                assert(self.small_allocations.remove(@intFromPtr(old_mem.ptr)));
            }
            if (config.verbose_log) {
                log.info("small free {d} bytes at {*}", .{ old_mem.len, old_mem.ptr });
            }
        }

        // Returns true if an allocation of `size` bytes is within the specified
        // limits if enable_memory_limit is true
        fn isAllocationAllowed(self: *Self, size: usize) bool {
            if (config.enable_memory_limit) {
                const new_req_bytes = self.total_requested_bytes + size;
                if (new_req_bytes > self.requested_memory_limit)
                    return false;
                self.total_requested_bytes = new_req_bytes;
            }

            return true;
        }

        fn alloc(ctx: *anyopaque, len: usize, log2_ptr_align: u8, ret_addr: usize) ?[*]u8 {
            const self: *Self = @ptrCast(@alignCast(ctx));
            self.mutex.lock();
            defer self.mutex.unlock();
            if (!self.isAllocationAllowed(len)) return null;
            return allocInner(self, len, @as(Allocator.Log2Align, @intCast(log2_ptr_align)), ret_addr) catch return null;
        }

        fn allocInner(
            self: *Self,
            len: usize,
            log2_ptr_align: Allocator.Log2Align,
            ret_addr: usize,
        ) Allocator.Error![*]u8 {
            const new_aligned_size = @max(len, @as(usize, 1) << @as(Allocator.Log2Align, @intCast(log2_ptr_align)));
            if (new_aligned_size > largest_bucket_object_size) {
                try self.large_allocations.ensureUnusedCapacity(self.backing_allocator, 1);
                const ptr = self.backing_allocator.rawAlloc(len, log2_ptr_align, ret_addr) orelse
                    return error.OutOfMemory;
                const slice = ptr[0..len];

                const gop = self.large_allocations.getOrPutAssumeCapacity(@intFromPtr(slice.ptr));
                if (config.retain_metadata and !config.never_unmap) {
                    // Backing allocator may be reusing memory that we're retaining metadata for
                    assert(!gop.found_existing or gop.value_ptr.freed);
                } else {
                    assert(!gop.found_existing); // This would mean the kernel double-mapped pages.
                }
                gop.value_ptr.bytes = slice;
                if (config.enable_memory_limit)
                    gop.value_ptr.requested_size = len;
                gop.value_ptr.captureStackTrace(ret_addr, .alloc);
                if (config.retain_metadata) {
                    gop.value_ptr.freed = false;
                    if (config.never_unmap) {
                        gop.value_ptr.log2_ptr_align = log2_ptr_align;
                    }
                }

                if (config.verbose_log) {
                    log.info("large alloc {d} bytes at {*}", .{ slice.len, slice.ptr });
                }
                return slice.ptr;
            }

            if (config.safety) {
                try self.small_allocations.ensureUnusedCapacity(self.backing_allocator, 1);
            }
            const new_size_class = math.ceilPowerOfTwoAssert(usize, new_aligned_size);
            const ptr = try self.allocSlot(new_size_class, ret_addr);
            if (config.safety) {
                const gop = self.small_allocations.getOrPutAssumeCapacity(@intFromPtr(ptr));
                gop.value_ptr.requested_size = len;
                gop.value_ptr.log2_ptr_align = log2_ptr_align;
            }
            if (config.verbose_log) {
                log.info("small alloc {d} bytes at {*}", .{ len, ptr });
            }
            return ptr;
        }

        fn createBucket(self: *Self, size_class: usize, bucket_index: usize) Error!*BucketHeader {
            const page = try self.backing_allocator.alignedAlloc(u8, page_size, page_size);
            errdefer self.backing_allocator.free(page);

            const bucket_size = bucketSize(size_class);
            const bucket_bytes = try self.backing_allocator.alignedAlloc(u8, @alignOf(BucketHeader), bucket_size);
            const ptr = @as(*BucketHeader, @ptrCast(bucket_bytes.ptr));
            ptr.* = BucketHeader{
                .prev = ptr,
                .next = ptr,
                .page = page.ptr,
                .alloc_cursor = 0,
                .used_count = 0,
            };
            self.buckets[bucket_index] = ptr;
            // Set the used bits to all zeroes
            @memset(@as([*]u8, @as(*[1]u8, ptr.usedBits(0)))[0..usedBitsCount(size_class)], 0);
            return ptr;
        }
    };
}

/// Represents the kind of trace operation.
const TraceKind = enum {
    /// Allocation trace.
    alloc,

    /// Deallocation trace.
    free,
};
