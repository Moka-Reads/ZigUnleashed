const std = @import("std");

pub fn main() void {
    var array: [6:0]u8 = [_:0]u8{ 'H', 'e', 'l', 'l', 'o', 0 };
    const index = std.mem.indexOfScalar(u8, array[0..], 'l') orelse unreachable;
    std.debug.print("Index of 'l': {}\n", .{index});
}