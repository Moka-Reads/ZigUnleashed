const std = @import("std");

const Number = enum(u8){
    Zero, 
    One, 
    Two, 
    _
};

pub fn main() !void{
    var num = Number.Zero;
    std.debug.print("{any} => {d}\n", .{num, @enumToInt(num)});
    // Increment to One
    num = @intToEnum(Number, @enumToInt(num) + 1);
    std.debug.print("{any} => {d}\n", .{num, @enumToInt(num)});
    // Increment to Two
    num = @intToEnum(Number, @enumToInt(num) + 1);
    std.debug.print("{any} => {d}\n", .{num, @enumToInt(num)});

    num = @intToEnum(Number, @enumToInt(num) + 1);
    std.debug.print("{any} => {d}\n", .{num, @enumToInt(num)});
}