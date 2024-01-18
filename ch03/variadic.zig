const std = @import("std");

fn average(args: anytype) f64 {
    var sum: f64 = 0.0;
    // iterate thru each argument
    inline for (args) |arg| {
        sum += @as(f64, arg);
    }
    const len: f64 = @floatFromInt(args.len);
    return sum / len;
}

pub fn main() !void {
    const avg = average(.{ 8.9, 2.2, 5, 6, 23, -2 });
    std.debug.print("Result = {}", .{avg});
}
