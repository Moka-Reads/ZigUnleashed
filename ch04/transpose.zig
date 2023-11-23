const std = @import("std");

/// A generic function to take the transpose of a matrix
/// - T: A generic type of the matrix and what it'll return
/// - row_size: The row size of the original matrix (must be known in compile time)
/// - col_size: The column size of the original matrix (must be known in compile time)
/// - matrix: A matrix with dimension row_size x col_size
pub fn transpose(comptime T: type, comptime row_size: usize, comptime col_size: usize, matrix: [row_size][col_size]T) [col_size][row_size]T {
    var transposed: [col_size][row_size]T = undefined;
    for (matrix, 0..) |row, row_idx| {
        for (row, 0..) |element, col_idx| {
            transposed[col_idx][row_idx] = element;
        }
    }
    return transposed;
}

pub fn main() !void {
    const original: [3][4]u32 = .{
        .{ 1, 2, 3, 4 }, .{ 5, 6, 7, 8 }, .{ 9, 10, 11, 12 },
    };
    const transposed = transpose(u32, 3, 4, original);
    std.debug.print("Original:\n{any}\n", .{original});
    std.debug.print("Transposed:\n{any}\n", .{transposed});
}
