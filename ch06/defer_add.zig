const std = @import("std");

pub fn main() !void {
    var a: u32 = 10;

    {
        // deferred a to increment by 1 at end of scope
        defer a += 1;
        std.debug.print("A is still 10? {}\n", .{a == 10});
    } // a += 1

    std.debug.print("A is 11? {}\n", .{a == 11});
}
