const std = @import("std");
const myUnion = union{
    a: i32, 
    b: f64, 
    fn print_all_members(mu: myUnion) void{
        std.debug.print("a {}\n", .{mu.a});
        std.debug.print("b {}\n", .{mu.b});
        std.debug.print(" -----------\n", .{});
    }
};

pub fn main() !void{
    var mu: myUnion = .{.a = 432};
    mu.print_all_members();
    mu = .{.b = -20.5};
    mu.print_all_members();
}