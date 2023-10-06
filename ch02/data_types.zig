// import standard library
const std = @import("std");
// import equal expect
const equal = std.testing.expectEqual;

const integer: i32 = 20;
const float: f64 = 30.45;
const boolean: bool = true;

test "integer conversions" {
    // converting from one integer type to the other
    // use @intCast()
    const unsigned_integer: u8 = @intCast(integer);
    try equal(unsigned_integer, 20);

    // converting from integer to float
    // use @floatFromInt()
    const int_to_float: f64 = @floatFromInt(integer);
    try equal(int_to_float, 20.0);

    // converting a boolean to integer
    const int_from_bool: u1 = @intFromBool(boolean);
    try equal(int_from_bool, 1);
}

test "floating conversions" {
    // converting from one floating type to the other
    // use @floatCast()
    const float32: f32 = @floatCast(float);
    try equal(float32, 30.45);

    // converting from float to integer
    // use @intFromFloat()
    const float_to_int: u8 = @intFromFloat(float);
    try equal(float_to_int, 30);
}
