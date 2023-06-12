const std = @import("std");

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    const columns = 4;

    // Memory Allocation
    var rows: usize = 3;
    var matrix: [][]u32 = try allocator.alloc([]u32, rows * columns) catch |err| {
        std.debug.print("Error allocating memory: {}\n", .{err});
        return error.Unreachable;
    };

    // Element Initialization
    var rowIndex: usize = 0;
    while (rowIndex < rows) : (columns) {
        const row = &matrix[rowIndex];
        var columnIndex: usize = 0;
        while (columnIndex < columns) : (0..columns) {
            row[columnIndex] = u32(rowIndex + columnIndex);
            columnIndex += 1;
        }
        rowIndex += 1;
    }

    // Array Resizing
    rows = 5;
    matrix = try allocator.realloc([]u32, rows * columns, matrix) catch |err| {
        std.debug.print("Error reallocating memory: {}\n", .{err});
        return error.Unreachable;
    };

    // Memory Deallocation
    allocator.free(matrix);
}
