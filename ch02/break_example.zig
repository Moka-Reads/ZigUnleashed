const print = @import("std").debug.print;

pub fn main() !void {
    var i: i32 = 0;
    while (true) : (i += 1) {
        if (i == 10) {
            print("Exiting the loop!!!", .{});
            break;
        }
    }
}
