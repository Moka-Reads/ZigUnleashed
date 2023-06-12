const std = @import("std");

pub fn main() void {
    var array: [6:0]u8 = [_:0]u8{ 'H', 'e', 'l', 'l', 'o', 0 };
    const string = std.mem.bytesAsSlice(u8, array[0..]);
    std.debug.print("{s}\n", .{string});
}