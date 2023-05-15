const std = @import("std");

fn swap(a: *i32, b: *i32) void {
    // dereference using `.*`
    const temp = a.*;
    a.* = b.*;
    b.* = temp;
}

pub fn main() !void {
    var a: i32 = 45;
    var b: i32 = 32;
    std.debug.print("Before swap, a={}, b={}\n", .{ a, b });
    swap(&a, &b);
    std.debug.print("After swap, a={}, b={}\n", .{ a, b });
}
