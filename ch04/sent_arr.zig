const std = @import("std");

pub fn main() void {
    var array: [5:0]u8 = [_:0]u8{ 1, 2, 3, 4, 5 };
    for (array) |value| {
        std.debug.print("{d} ", .{value});
    }
}