const print = @import("std").debug.print;

pub fn main() !void {
    const a = 7;
    const b = 5;
    const c = 4;

    if(a + b < c){
        print("This is the if condition", .{});
    } else if (a + b == c * 3){
        print("This is the second condition", .{});
    } else {
        print("This is default condition", .{});
    }
}