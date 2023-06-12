const std = @import("std");

pub fn main() void {
    var src: [6:0]u8 = [_:0]u8{ 'H', 'e', 'l', 'l', 'o', 0 };
    var dst: [6:0]u8 = [_:0]u8{ 0, 0, 0, 0, 0, 0 };
    std.mem.copy(u8, dst[0..], src[0..]);
    std.debug.print("{s}\n", .{dst[0..]});
}