const std = @import("std");

const Status = enum{
    Created, 
    Processing, 
    Success,
    Failed, 

    const Self = @This();

    fn init() Self{
        return Self.Created;
    }

    fn process(self: *Self) void{
        // do something 
        self = Self.Processing;
    }

    fn finish(self: *Self, is_fail: bool) void{
        if (is_fail){
            self = Self.Failed;
        } else {
            self = Self.Success;
        }
    }
};


pub fn main() !void{
    std.debug.print("Hello", .{});
}