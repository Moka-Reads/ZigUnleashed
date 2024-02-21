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
    const result = divide(3.2, 0.0) catch |e| {
        std.debug.print("Error: {}\n", .{e});
        return;
    };
    std.debug.print("Result: {d}\n", .{result});
}
