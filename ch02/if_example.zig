const print = @import("std").debug.print;

pub fn main() !void {
    const a  = 50;
    const b = 7;

    if(a > b and b^2 < a){
        print("YAYYYY ITS TRUE", .{});
    }
}