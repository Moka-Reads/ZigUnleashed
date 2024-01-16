const std = @import("std");

// `error` type works similar to `enum`
const MathError = error{
    // Create an error variant
    DivideByZero,
};

fn divide(a: f32, b: f32) MathError!f32 {
    if (b == 0.0) return MathError.DivideByZero;
    return a / b;
}

pub fn main() !void {
    // Use `catch` to have default values
    // Similar to `unwrap_or_default()` in Rust
    // `expr() !T => = expr() catch val;`
    const result = divide(3.2, 0.0) catch -1.0;
    // `try` is shortcut to `expr() catch |err| return err;`
    std.debug.print("Result: {d}\n", .{result});
}
