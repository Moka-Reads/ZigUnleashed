const std = @import("std");
const Allocator = std.mem.Allocator;

pub fn main() !void {
    const allocator = std.heap.page_allocator;
    var array1: [6:0]u8 = [_:0]u8{ 'H', 'e', 'l', 'l', 'o', 0 };
    var array2: [6:0]u8 = [_:0]u8{ 'W', 'o', 'r', 'l', 'd', 0 };
    const result = try std.mem.concat(allocator, u8, &[_][]const u8{array1[0..], array2[0..]});
    defer allocator.free(result);
    std.debug.print("{any}\n", .{result});
}