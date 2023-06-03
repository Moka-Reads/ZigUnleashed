const std = @import("std");
fn multiply(a: anytype, b: @TypeOf(a)) @TypeOf(a) {
    return a * b;
}

pub fn main() !void {
    const a: i32 = 23;
    const b: i32 = 45;
    std.debug.print("Result: {}", .{multiply(a, b)});
}
