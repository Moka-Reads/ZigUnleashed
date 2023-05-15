const std = @import("std");

// takes a value and function
// function is defined to take an i32 and return i32
fn add_fn_twice(value: i32, comptime f: fn (i32) i32) i32 {
    return f(value) + f(value);
}
// a function that takes i32 and returns i32
// we will use this for `add_fn_twice'
fn square(value: i32) i32 {
    return value * value;
}

pub fn main() !void {
    // value is 4, function is square
    const result = add_fn_twice(4, square);
    std.debug.print("Result: {}\n", .{result});
}
