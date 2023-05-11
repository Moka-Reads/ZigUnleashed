const print = @import("std").debug.print;
pub fn main() !void {
    // array in layer 1 or most outer loop
    const array_l1 = [_]i32{ 1, 2, 3, 4, 5, 6 };
    l1: for (array_l1) |item_l1| {
        print("L1 Item: {}\n", .{item_l1});
        // array in layer 2
        const array_l2 = [_]i32{ 7, 8, 9, 10, 11 };
        l2: for (array_l2) |item_l2| {
            // condition to leave first layer
            if (item_l1 * 3 == item_l2) {
                print("Exiting L1\n", .{});
                break :l1;
            } // condition to leave second layer
            else if (item_l1 * 2 == item_l2) {
                print("Exiting L2\n", .{});
                break :l2;
            }
            print("\t=> L2 Item: {}\n", .{item_l2});
        }
    }
}
