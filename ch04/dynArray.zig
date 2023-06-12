const std = @import("std");
const ArrayList = std.ArrayList;

pub fn main() !void {
    // declare an allocator to use for our array
    var allocator = std.heap.page_allocator;
    // create an integer dynamic array
    var dyn_array = ArrayList(i32).init(allocator);
    // free it at end of scope
    defer dyn_array.deinit();

    // append values to the dynamic array
    try dyn_array.append(10);
    try dyn_array.append(20);
    try dyn_array.append(30);

    // to access elements, index from `dyn_array.items`
    std.debug.print("Element at index 0: {}\n", .{dyn_array.items[0]});
    std.debug.print("Element at index 1: {}\n", .{dyn_array.items[1]});
    std.debug.print("Element at index 2: {}\n", .{dyn_array.items[2]});

    // Pop elements in the dynamic array
    const popped = dyn_array.pop();
    std.debug.print("Popped element: {}\n", .{popped});
}
