const std = @import("std");
fn max(comptime T: type, x: T, y: T) T {
    if (x > y) {
        return x;
    } else {
        return y;
    }
}
pub fn main() !void {
    const x = 3;
    const y = 4;
    std.debug.print("The maximum of x and y is: {}\n", 
    .{max(i32, x, y)});
    const a = 3.14;
    const b = 2.71;
    std.debug.print("The maximum of a and b is: {}\n", 
    .{max(f64, a, b)});
}
