// import standard library
const std = @import("std");
// store print function as `print`
const print = std.debug.print;

pub fn main() !void {
    const num_int: i32 = 20;
    const num_float: f64 = 30.451;
    const boolean: bool = true;
    print("`num_int` to float: {}\n", 
        .{@intToFloat(f64, num_int)});
    print("`num_float` to int: {}\n", 
        .{@floatToInt(i32, num_float)});
    print("`boolean` to int: {}\n", 
        .{@boolToInt(boolean)});
}
