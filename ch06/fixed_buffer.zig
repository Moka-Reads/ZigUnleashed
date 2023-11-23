const std = @import("std");
const Allocator = std.mem.Allocator;
const mem = std.mem;
const assert = std.debug.assert;
/// This is a simpler version of the Fixed Buffer Allocator
/// from the Standard Library found at https://github.com/ziglang/zig/blob/0.11.x/lib/std/heap.zig
/// This allocator will not be thread-safe and only suitable for single-threaded builds
pub const FixedBufferAllocator = struct {
    // the index that marks the end of allocated space within the buffer
    end_index: usize,
    // the buffer that space is allocated within
    buffer: []u8,

    const Self = @This();

    /// Initializes the FBA with an allocator
    // Sets `buffer` to the `buffer` field
    // and initializes the `end_index` at the start or index 0
    pub fn init(buffer: []u8) Self {
        return .{ .buffer = buffer, .end_index = 0 };
    }
    /// Takes a mutable reference of the FBA and returns the Allocator type
    pub fn allocator(self: *Self) Allocator {
        return Allocator{ .ptr = self, .vtable = &.{
            .alloc = alloc,
            .resize = resize,
            .free = free,
        } };
    }
    /// checks if a given pointer is within the range of the allocator's buffer
    pub fn ownsPtr(self: *Self, ptr: [*]u8) bool {
        return sliceContainsPtr(self.buffer, ptr);
    }
    /// checks if a given slice is completely contained within the allocator's buffer
    pub fn ownsSlice(self: *Self, slice: []u8) bool {
        return sliceContainsSlice(self.buffer, slice);
    }
    /// checks if a slice is the last allocation made by the allocator
    pub fn isLastAllocation(self: *Self, buf: []u8) bool {
        // checks if the end of the slice is the same as the current end of the allocator's buffer
        return buf.ptr + buf.len == self.buffer.ptr + self.end_index;
    }

    // resets the FBA's index to 0
    pub fn reset(self: *Self) void {
        self.end_index = 0;
    }

    /// The function used to allocate a block of memory by the allocator
    /// - ctx: Context pointer
    /// - n: Size of the memory block to allocate
    /// - log2_ptr_align: This is the base-2 log of the required alignment of the ptr
    /// - ra: This is the return address of the caller
    fn alloc(ctx: *anyopaque, n: usize, log2_ptr_align: u8, ra: usize) ?[*]u8 {
        _ = ra; // Not used in this function
        // cast the context pointer to `*FixedBufferAllocator`
        const self: *Self = @ptrCast(@alignCast(ctx));
        // calculates the required alignment for the pointer
        const ptr_align = @as(usize, 1) << @as(Allocator.Log2Align, @intCast(log2_ptr_align));
        // calculates the offset needed to align the pointer, if offset can't be calculated return `null`
        const adjust_off = mem.alignPointerOffset(self.buffer.ptr + self.end_index, ptr_align) orelse return null;
        // calculates the new index after adjusting for alignment
        const adjusted_index = self.end_index + adjust_off;
        // calculates the new index after allocating the memory block
        const new_end_index = adjusted_index + n;
        // checks if the new end index exceeds the buffer length, if it does return null
        if (new_end_index > self.buffer.len) return null;
        // set the new end index
        self.end_index = new_end_index;
        // returns a pointer to the allocted memory block
        return self.buffer.ptr + adjusted_index;
    }

    // The function is used to resize a buffer that was previously allocated by the allocator.
    // It takes five parameters:
    // - ctx: The context pointer, which is cast to a FixedBufferAllocator pointer inside the function.
    // - buf: The buffer that needs to be resized.
    // - log2_buf_align: The base-2 logarithm of the required alignment for the buffer.
    // - new_size: The new size for the buffer.
    // - return_address: The return address of the caller.
    fn resize(ctx: *anyopaque, buf: []u8, log2_buf_align: u8, new_size: usize, return_address: usize) bool {
        // Cast the context pointer to a FixedBufferAllocator pointer
        const self: *Self = @ptrCast(@alignCast(ctx));
        _ = log2_buf_align; // Not used in this function
        _ = return_address; // Not used in this function
        assert(@inComptime() or self.ownsSlice(buf)); // Assert that the allocator owns the buffer

        // If the buffer is not the last allocation, check if the new size is greater than the current size
        if (!self.isLastAllocation(buf)) {
            if (new_size > buf.len) return false; // If the new size is greater, return false
            return true; // If the new size is less than or equal to the current size, return true
        }

        // If the new size is less than or equal to the current size, reduce the end index of the allocator
        if (new_size <= buf.len) {
            const sub = buf.len - new_size;
            self.end_index -= sub;
            return true;
        }

        // If the new size is greater than the current size, check if there's enough space in the buffer
        const add = new_size - buf.len;
        if (add + self.end_index > self.buffer.len) return false; // If there's not enough space, return false

        // If there's enough space, increase the end index of the allocator
        self.end_index += add;
        return true; // Return true to indicate that the resize operation was successful
    }

    // The function is used to free a buffer that was previously allocated by the allocator.
    // It takes four parameters:
    // - ctx: The context pointer, which is cast to a FixedBufferAllocator pointer inside the function.
    // - buf: The buffer that needs to be freed.
    // - log2_buf_align: The base-2 logarithm of the required alignment for the buffer.
    // - return_address: The return address of the caller.
    fn free(
        ctx: *anyopaque,
        buf: []u8,
        log2_buf_align: u8,
        return_address: usize,
    ) void {
        // Cast the context pointer to a FixedBufferAllocator pointer
        const self: *Self = @ptrCast(@alignCast(ctx));
        _ = log2_buf_align; // Not used in this function
        _ = return_address; // Not used in this function
        assert(@inComptime() or self.ownsSlice(buf)); // Assert that the allocator owns the buffer

        // If the buffer is the last allocation made by the allocator, reduce the end index of the allocator
        if (self.isLastAllocation(buf)) {
            self.end_index -= buf.len;
        }
    }
};

/// Checks if a pointer is within the range of a slice `container`
/// Compares the integer representation of the pointer with the start
/// and end of the slice
fn sliceContainsPtr(container: []u8, ptr: [*]u8) bool {
    // Checks if the pointer is at the start of the slice
    return @intFromPtr(ptr) >= @intFromPtr(container.ptr) and
        // Checks if the pointer is at the end of the slice
        @intFromPtr(ptr) < (@intFromPtr(container.ptr) + container.len);
}

/// Checks if a slice is completely contained within another slice
/// Compares the start and end with eachother
fn sliceContainsSlice(container: []u8, slice: []u8) bool {
    // Checks if the start of `slice` and `container` fall within range
    return @intFromPtr(slice.ptr) >= @intFromPtr(container.ptr) and
        // Checks if the ends of `slice` and `container` fall within range
        (@intFromPtr(slice.ptr) + slice.len) <= (@intFromPtr(container.ptr) + container.len);
}

pub fn main() !void {
    var buffer: [1000]u8 = undefined;
    var FBA = FixedBufferAllocator.init(&buffer);
    const allocator = FBA.allocator();

    const block1 = allocator.alloc(u32, 200);
    const block2 = allocator.alloc(i32, 200);
    allocator.free(block1);
    const block3 = allocator.alloc(f32, 300);
    allocator.free(block3);
    allocator.free(block2);
}
