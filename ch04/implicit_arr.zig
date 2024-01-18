const std = @import("std");

pub fn main() !void {
    // Implicitly declared array with explicit type
    const numbers: [4]i32 = .{ 1, 2, 3, 4 };

    // Implicitly declared array with inferred type
    const characters: [4]u8 = .{ 'a', 'b', 'c', 'd' };

    std.debug.print("Numbers: {any}\n", .{numbers});
    std.debug.print("Characters: {any}\n", .{characters});
}
