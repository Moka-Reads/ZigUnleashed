const std = @import("std");

pub fn main() !void {
    const array2D: [3][4]u32 = [3][4]u32{
        .{1, 2, 3, 4},
        .{5, 6, 7, 8},
        .{9, 10, 11, 12},
    };

    for (array2D) |row, rowIndex| {
        for (row) |element, columnIndex| {
            std.debug.print("Element at [{}, {}]: {}\n", .{rowIndex, columnIndex, element});
        }
    }
}
