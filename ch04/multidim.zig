const std = @import("std");

pub fn main() !void {
    const mat3x4: [3][4]u32 = [3][4]u32{
        .{1, 2, 3, 4},
        .{5, 6, 7, 8},
        .{9, 10, 11, 12},
    };

    const element = mat3x4[1][2];
    std.debug.print("Element at [1][2]: {}\n", .{element});
}
