const std = @import("std");
const builtin = std.builtin;
const mem = std.mem;
const c = std.c;
const Allocator = std.mem.Allocator;
const assert = std.debug.assert;

const CAllocator = struct {
    comptime {
        if (!builtin.link_libc) {
            @compileError("C allocator is only available when linking against libc");
        }
    }

    usingnamespace if (@hasDecl(c, "malloc_size"))
        struct {
            pub const supports_malloc_size = true;
            pub const malloc_size = c.malloc_size;
        }
    else if (@hasDecl(c, "malloc_usable_size"))
        struct {
            pub const supports_malloc_size = true;
            pub const malloc_size = c.malloc_usable_size;
        }
    else if (@hasDecl(c, "_msize"))
        struct {
            pub const supports_malloc_size = true;
            pub const malloc_size = c._msize;
        }
    else
        struct {
            pub const supports_malloc_size = false;
        };

    pub const supports_posix_memalign = @hasDecl(c, "posix_memalign");

    fn getHeader(ptr: [*]u8) *[*]u8 {
        return @as(*[*]u8, @ptrFromInt(@intFromPtr(ptr) - @sizeOf(usize)));
    }

    fn alignedAlloc(len: usize, log2_align: u8) ?[*]u8 {
        const alignment = @as(usize, 1) << @as(Allocator.Log2Align, @intCast(log2_align));
        if (supports_posix_memalign) {
            // The posix_memalign only accepts alignment values that are a
            // multiple of the pointer size
            const eff_alignment = @max(alignment, @sizeOf(usize));

            var aligned_ptr: ?*anyopaque = undefined;
            if (c.posix_memalign(&aligned_ptr, eff_alignment, len) != 0)
                return null;

            return @as([*]u8, @ptrCast(aligned_ptr));
        }

        // Thin wrapper around regular malloc, overallocate to account for
        // alignment padding and store the original malloc()'ed pointer before
        // the aligned address.
        var unaligned_ptr = @as([*]u8, @ptrCast(c.malloc(len + alignment - 1 + @sizeOf(usize)) orelse return null));
        const unaligned_addr = @intFromPtr(unaligned_ptr);
        const aligned_addr = mem.alignForward(usize, unaligned_addr + @sizeOf(usize), alignment);
        var aligned_ptr = unaligned_ptr + (aligned_addr - unaligned_addr);
        getHeader(aligned_ptr).* = unaligned_ptr;

        return aligned_ptr;
    }

    fn alignedFree(ptr: [*]u8) void {
        if (supports_posix_memalign) {
            return c.free(ptr);
        }

        const unaligned_ptr = getHeader(ptr).*;
        c.free(unaligned_ptr);
    }

    fn alignedAllocSize(ptr: [*]u8) usize {
        if (supports_posix_memalign) {
            return CAllocator.malloc_size(ptr);
        }

        const unaligned_ptr = getHeader(ptr).*;
        const delta = @intFromPtr(ptr) - @intFromPtr(unaligned_ptr);
        return CAllocator.malloc_size(unaligned_ptr) - delta;
    }

    fn alloc(
        _: *anyopaque,
        len: usize,
        log2_align: u8,
        return_address: usize,
    ) ?[*]u8 {
        _ = return_address;
        assert(len > 0);
        return alignedAlloc(len, log2_align);
    }

    fn resize(
        _: *anyopaque,
        buf: []u8,
        log2_buf_align: u8,
        new_len: usize,
        return_address: usize,
    ) bool {
        _ = log2_buf_align;
        _ = return_address;
        if (new_len <= buf.len) {
            return true;
        }
        if (CAllocator.supports_malloc_size) {
            const full_len = alignedAllocSize(buf.ptr);
            if (new_len <= full_len) {
                return true;
            }
        }
        return false;
    }

    fn free(
        _: *anyopaque,
        buf: []u8,
        log2_buf_align: u8,
        return_address: usize,
    ) void {
        _ = log2_buf_align;
        _ = return_address;
        alignedFree(buf.ptr);
    }
};

/// Supports the full Allocator interface, including alignment, and exploiting
/// `malloc_usable_size` if available. For an allocator that directly calls
/// `malloc`/`free`, see `raw_c_allocator`.
pub const c_allocator = Allocator{
    .ptr = undefined,
    .vtable = &c_allocator_vtable,
};
const c_allocator_vtable = Allocator.VTable{
    .alloc = CAllocator.alloc,
    .resize = CAllocator.resize,
    .free = CAllocator.free,
};

/// Asserts allocations are within `@alignOf(std.c.max_align_t)` and directly calls
/// `malloc`/`free`. Does not attempt to utilize `malloc_usable_size`.
/// This allocator is safe to use as the backing allocator with
/// `ArenaAllocator` for example and is more optimal in such a case
/// than `c_allocator`.
pub const raw_c_allocator = Allocator{
    .ptr = undefined,
    .vtable = &raw_c_allocator_vtable,
};
const raw_c_allocator_vtable = Allocator.VTable{
    .alloc = rawCAlloc,
    .resize = rawCResize,
    .free = rawCFree,
};

fn rawCAlloc(
    _: *anyopaque,
    len: usize,
    log2_ptr_align: u8,
    ret_addr: usize,
) ?[*]u8 {
    _ = ret_addr;
    assert(log2_ptr_align <= comptime std.math.log2_int(usize, @alignOf(std.c.max_align_t)));
    // Note that this pointer cannot be aligncasted to max_align_t because if
    // len is < max_align_t then the alignment can be smaller. For example, if
    // max_align_t is 16, but the user requests 8 bytes, there is no built-in
    // type in C that is size 8 and has 16 byte alignment, so the alignment may
    // be 8 bytes rather than 16. Similarly if only 1 byte is requested, malloc
    // is allowed to return a 1-byte aligned pointer.
    return @as(?[*]u8, @ptrCast(c.malloc(len)));
}

fn rawCResize(
    _: *anyopaque,
    buf: []u8,
    log2_old_align: u8,
    new_len: usize,
    ret_addr: usize,
) bool {
    _ = log2_old_align;
    _ = ret_addr;
    return new_len <= buf.len;
}

fn rawCFree(
    _: *anyopaque,
    buf: []u8,
    log2_old_align: u8,
    ret_addr: usize,
) void {
    _ = log2_old_align;
    _ = ret_addr;
    c.free(buf.ptr);
}
