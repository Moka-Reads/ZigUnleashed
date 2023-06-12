const std = @import("std");

pub fn main() void {
    var array1: [6:0]u8 = [_:0]u8{ 'H', 'e', 'l', 'l', 'o', 0 };
    var array2: [6:0]u8 = [_:0]u8{ 'H', 'e', 'l', 'l', 'o', 0 };
    const equal = std.mem.eql(u8, array1[0..], array2[0..]);
    std.debug.print("Equal: {}\n", .{equal});
}