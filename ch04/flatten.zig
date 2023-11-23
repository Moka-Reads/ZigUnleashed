const std = @import("std");
pub fn main() !void {
    const array2D: [2][4]u32 = .{ .{ 1, 2, 3, 4 }, .{ 5, 6, 7, 8 } };
    const totalElements = array2D.len * array2D[0].len;
    var flattened: [totalElements]u32 = undefined;
    var currentIndex: usize = 0;
    for (array2D) |row| {
        for (row) |element| {
            flattened[currentIndex] = element;
            currentIndex += 1;
        }
    }
    std.debug.print("Flattened array: {any}", .{flattened});
}
