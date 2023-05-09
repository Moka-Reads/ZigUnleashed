


pub fn main() !void {
    var a: i32 = undefined;
    a = 32;
    @import("std").debug.print("Result: {}", .{a});
}