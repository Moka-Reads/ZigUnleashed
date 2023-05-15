const std = @import("std");
const print = std.debug.print;

fn add(a: i32, b: i32) i32 {
    return a + b;
}

pub fn main() !void {
    const add_fn: *const fn (i32, i32) i32 = add;
    print("2 + 2 = {}\n", .{add_fn(2, 2)});
    print("4 + 23 = {}\n", .{add_fn(4, 23)});
}
