const std = @import("std");

const Point = struct { x: i32 = 0, y: i32 = 0 };

pub fn main() !void {
    // no need to declare any values for fields with default
    const origin: Point = .{};
    const point = Point{ .x = 2, .y = 4 };

    std.debug.print("Origin: {any}\n", .{origin});
    std.debug.print("Point: {any}\n", .{point});
}
