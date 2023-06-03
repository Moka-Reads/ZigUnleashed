const std = @import("std");

pub fn main() !void {
    const arr = .{ 1, 2, 3, 4 };
    std.debug.print("Array: {any}\n", .{arr});
    std.debug.print("Array Info: {any}\n", .{@typeName(arr)});
}
