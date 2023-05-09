const print = @import("std").debug.print;
pub fn main() !void {
    const value = 3;
    switch (value) {
        // syntax 
        // const expr (case) => <expression>, 
        1 => print("Value is 1", .{}), 
        2 => print("Value is 2", .{}), 
        3 => print("Value is 3", .{}), 
        // default expression 
        else => print("Invalid value", .{})
    }
}