const std = @import("std");

const Number = enum(u8) { Zero, One, Two, _ };

pub fn main() !void {
    var num = Number.Zero;
    std.debug.print("{any} => {d}\n", .{ num, @intFromEnum(num) });
    // Increment to One
    num = @enumFromInt(@intFromEnum(num) + 1);
    std.debug.print("{any} => {d}\n", .{ num, @intFromEnum(num) });
    // Increment to Two
    num = @enumFromInt(@intFromEnum(num) + 1);
    std.debug.print("{any} => {d}\n", .{ num, @intFromEnum(num) });

    num = @enumFromInt(@intFromEnum(num) + 1);
    std.debug.print("{any} => {d}\n", .{ num, @intFromEnum(num) });
}
