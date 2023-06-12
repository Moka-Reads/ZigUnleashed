const std = @import("std");

pub fn main() void {
    var array: [5]u8 = [_]u8{1, 2, 3, 4, 5};
    var st_array: [6:0]u8 = undefined;
    std.mem.copy(u8, st_array[0..array.len], &array);
    st_array[array.len] = 0;
    std.debug.print("{any}\n", .{st_array});
}
