const std = @import("std");

// Declare a struct that is named by its constant's identifier
// We assign it using struct{}; which will contain fields, constants and methods
const Foo = struct {
    // field defined by <ident>: <type>,
    bar: u8,
    baz: []const u8,

    // you can also declare constants
    const MAX: i32 = 32;
};

pub fn main() !void {
    // Initialize a struct, to access the fields inside use .<field>
    const foo = Foo{ .bar = 1, .baz = "hello" };
    // access fields by <ident>.<field>
    std.debug.print("Bar = {d}\n", .{foo.bar});
    std.debug.print("Baz = {s}\n", .{foo.baz});
    // Only able to access constant with <struct>.<const>
    std.debug.print("MAX = {d}\n", .{Foo.MAX});
}
