const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer {
        const deinit_status = gpa.deinit();
        if (deinit_status == .leak) @panic("MEMORY LEAK");
    }
    var ptr = allocator.alloc(i32, 10);
    std.debug.print("{any}\n", .{ptr});
    // we never freed the ptr
}
