const std = @import("std");
pub fn main() !void {
    var allocator = std.heap.page_allocator; // allocate using a page allocator
    // what's done in createSlice...create our pointer for 5 i32 elements
    var ptr = try allocator.alloc(i32, 5);
    var slice: []i32 = &[_]i32{}; // create a slice using the allocated memory
    slice = ptr;
    slice.len = 5; // set the length to 5
    // what's done in main...assign values to the elements of the slice
    for(slice) |_, i|{slice[i] = @intCast(i32, i);}
    // Print the values of the slice
    for (slice) |element| {
        std.debug.print("{} ", .{element});
    }
    // what's done in freeSlice...free the pointer we allocated
    allocator.free(ptr);
}
