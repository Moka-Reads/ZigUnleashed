const std = @import("std");
const print = std.debug.print;
const Insant = std.time.Instant;

pub fn main() !void {
    // get the current time
    const now = try Insant.now();
    var i: i32 = 0;
    var dummy: usize = 1;
    while (i < 1000) : (i += 1) {
        // do something
        const a = @intCast(usize, i) * 8 + 43;
        const b = a % 56;
        dummy += b;
    }
    // get the time we finished
    const finished = try Insant.now();
    // print the time elapsed
    print("Time Elapsed (regular): {}ns", 
        .{finished.since(now)});
}
