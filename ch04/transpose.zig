const std = @import("std");

pub fn main() !void {
    const original: [3][4]u32 = .{
        .{ 1, 2, 3, 4 },
        .{ 5, 6, 7, 8 },
        .{ 9, 10, 11, 12 },
    };
    var transposed: [4][3]u32 = undefined;
    for (original) |row, rowIndex| {
        for (row) |element, columnIndex| {
            transposed[columnIndex][rowIndex] = element;
        }
    }
    std.debug.print("Original:\n{any}\n", .{original});
    std.debug.print("Transposed:\n{any}\n", .{transposed});
}