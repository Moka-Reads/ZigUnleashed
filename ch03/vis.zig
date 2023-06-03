const std = @import("std");
const vis_fns = @import("vis_fns.zig");

pub fn main() !void {
    const x = 45;
    const y = 32;

    const max_result = vis_fns.max(x, y);
    std.debug.print("Max Result = {}\n", .{max_result});

    const ss_result = vis_fns.sum_of_squares(x, y);
    std.debug.print("SS Result = {}\n", .{ss_result});
}
