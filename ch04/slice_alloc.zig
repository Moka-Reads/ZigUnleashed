const std = @import("std");

pub fn main() !void {
    // allocate using a page allocator
    var allocator = std.heap.page_allocator;

    // what's done in createSlice...
    // create our pointer for 5 i32 elements
    var ptr = try allocator.alloc(i32, 5);

    // create a slice using the allocated memory
    var slice: []i32 = &[_]i32{};
    slice = ptr;
    // set the length to 5
    slice.len = 5;

    // what's done in main...
    // Assign values to the elements of the slice
    slice[0] = 1;
    slice[1] = 2;
    slice[2] = 3;
    slice[3] = 4;
    slice[4] = 5;

    // Print the values of the slice
    for (slice) |element| {
        std.debug.print("{} ", .{element});
    }

    // what's done in freeSlice...
    // free the pointer we allocated
    allocator.free(ptr);
}
