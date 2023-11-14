const std = @import("std");

/// `*anyopaque` is used to represent a pointer to an `opaque` type.
/// An `opaque` type is a type whose size is unknown or not specified.
/// This is similar to `void*` in C, which can point to a value of any type
pub fn anyopaque_to_string(ptr: *anyopaque) []u8 {
    // we first need to make sure our pointer is aligned correctly
    // then we are able to convert to a single-item pointer of []u8
    // we then return the string by dereferencing
    var slice: *[]u8 = @ptrCast(@alignCast(ptr));
    return slice.*;
}

pub fn main() !void {
    // create a string 
    var array: []const u8 = "Hello world!";
    // cast the string as a pointer to `*anyopaque`
    var anyopaque_pointer: *anyopaque = @ptrCast(&array.ptr);
    // convert the opaque pointer back to string
    const slice = anyopaque_to_string(anyopaque_pointer);
    // check if its the same length and equal
    std.debug.print("Length Equal? {}\n", .{array.len == slice.len});
    std.debug.print("String Equal? {}\n", .{std.mem.eql(u8, array, slice)});
}
