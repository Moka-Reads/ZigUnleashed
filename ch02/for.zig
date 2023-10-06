const print = @import("std").debug.print;

pub fn main() !void {
    var sum: i32 = 0;
    // find the sum from 1 to 10
    for (1..11) |i| {
        // convert i from usize to i32
        // then increment sum by i
        sum += @intCast(i);
    }
    print("Sum is {}", .{sum});
}
