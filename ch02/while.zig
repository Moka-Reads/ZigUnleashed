const print = @import("std").debug.print;

pub fn main() !void {
    var sum: i32 = 0;
    // find the sum from 1 to 10
    var i: i32 = 1;
    // create range from 1 to 10 and increase i by 1 
    while(i <= 10): (i += 1){
        // increase the sum 
        sum += i;
    }
    print("Sum is {}", .{sum});
}