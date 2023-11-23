const std = @import("std");
pub fn main() !void {
    const original: [3][4]u32 = .{ .{ 1, 2, 3, 4 }, .{ 5, 6, 7, 8 }, .{ 9, 10, 11, 12 } };
    var reshaped: [2][6]u32 = undefined;
    var rowIndex: usize = 0;
    var columnIndex: usize = 0;
    for (original) |row| {
        for (row) |element| {
            reshaped[rowIndex][columnIndex] = element;
            columnIndex += 1;
            if (columnIndex == 6) {
                columnIndex = 0;
                rowIndex += 1;
            }
        }
    }
    std.debug.print("Original: {any}\n", .{original});
    std.debug.print("Reshaped: {any}\n", .{reshaped});
}
