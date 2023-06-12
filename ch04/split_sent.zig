const std = @import("std");

pub fn main() void {
    var array: [6:0]u8 = [_:0]u8{ 'H', 'e', ',', 'l', ',', 0 };
    var parts = std.mem.split(u8, array[0..], ",");

    while (parts.next()) |part| {
        std.debug.print("{s} ", .{part});
    }
}
