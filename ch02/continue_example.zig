const print = @import("std").debug.print;

pub fn main() !void {
    // from 1 to 10 exclusively
    for (1..10) |i| {
        // check for an even number
        if (i % 2 == 0) {
            // skip to the next number 
            continue;
        }
        // only print odd numbers 
        print("{}\n", .{i});
    }
}
