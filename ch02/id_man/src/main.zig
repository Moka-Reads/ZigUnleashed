// imports
const std = @import("std");
const nanoid = @import("nanoid");
const random = std.crypto.random;

pub fn main() !void {
    var i: i32 = 0;

    while (i < 3) : (i += 1) {
        const id = nanoid.generate(random);
        std.debug.print("ID {}: {s}\n", .{ i, id });
    }
}
