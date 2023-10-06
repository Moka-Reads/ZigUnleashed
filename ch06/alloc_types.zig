const std = @import("std");

// Useful for allocating large blocks of memory that are multiples
// of the page size. It's efficient for large allocations but not
// as much for smaller ones.
test "page allocator" {
    const allocator = std.heap.page_allocator;
    const memory = try allocator.alloc(i32, 100);
    defer allocator.free(memory);

    try std.testing.expect(memory.len == 100);
    try std.testing.expect(@TypeOf(memory) == []i32);
}

// Ideal for when you have a fixed-sized buffer and you want to allocate
// memory from it. It's useful when you want to limit memory usage to a certain buffer.
test "fixed buffer allocator" {
    var buffer: [1000]u8 = undefined;
    var fba = std.heap.FixedBufferAllocator.init(&buffer);
    const allocator = fba.allocator();

    const memory = try allocator.alloc(u32, 50);
    defer allocator.free(memory);

    try std.testing.expect(memory.len == 50);
    try std.testing.expect(@TypeOf(memory) == []u32);
}

// Great for when you have many allocations that will all be freed at once. It's
// efficient in terms of both time (alloc and free are fast) and space (overhead per
// alloc is small).
test "arena allocator" {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();
    _ = try allocator.alloc(u8, 1);
    _ = try allocator.alloc(u8, 10);
    _ = try allocator.alloc(u8, 100);
}

// Good choice for general use cases, designed to be efficient for wide ranges
// of alloc sizes and lifetimes
test "GPA" {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer {
        const deinit_status = gpa.deinit();
        if (deinit_status == .leak) std.testing.expect(false) catch @panic("TEST FAIL");
    }
    const bytes = try allocator.alloc(u8, 100);
    defer allocator.free(bytes);
}

// Useful when interfacing with C code or operating systems APIs. It allocates
// memory using the C library's `malloc` function.
// Needs program to be linked with libc `-lc`
test "C allocator" {
    const allocator = std.heap.c_allocator;
    const memory = try allocator.alloc(u8, 100);
    defer allocator.free(memory);
    try std.testing.expect(memory.len == 100);
    try std.testing.expect(@TypeOf(memory) == []u8);
}