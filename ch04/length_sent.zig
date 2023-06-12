const std = @import("std");

pub fn main() void {
    var array: [6:0]u8 = [_:0]u8{ 'H', 'e', 'l', 'l', 'o', 0 };
    const length = std.mem.len(array[0..]);
    std.debug.print("Length: {}\n", .{length});
}