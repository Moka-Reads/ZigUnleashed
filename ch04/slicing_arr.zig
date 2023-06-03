const std = @import("std");

pub fn main() !void {
    var empty_slice: []i32 = [_]i32{};

    std.debug.print("Slice: {any}", .{empty_slice.ptr});
}
