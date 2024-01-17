const std = @import("std");
const print = std.debug.print;
const Insant = std.time.Instant;
pub fn main() !void {
    // get the current time
    const now = try Insant.now();
    // i must be known in comptime
    comptime var i: i32 = 0;
    var dummy: usize = 1;
    // create inlined while loop
    inline while (i < 1000) : (i += 1) {
        // do something
        const a: usize = @as(usize, i) * 8 + 43;
        const b = a % 56;
        dummy += b;
    }
    // get ending time
    const finished = try Insant.now();
    // print the time elapsed
    print("Time Elapsed (inline): {}ns", 
        .{finished.since(now)});
}
