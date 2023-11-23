const std = @import("std");
const testing = std.testing;

test "simple int pointer conversions" {
    var num: i32 = 544;
    // casted *i32 to *anyopaque
    var ptr: *anyopaque = @ptrCast(&num);
    // convert *anyopaque to *u32, making sure we use correct alignment
    var u32_ptr: *u32 = @ptrCast(@alignCast(ptr));
    // deref to check if we have correct value
    try testing.expect(u32_ptr.* == 544);
}

test "anyopaque to string" {
    var string: []const u8 = "hello world";
    var ptr: *anyopaque = @ptrCast(&string.ptr);
    var str_ptr: *[]u8 = @ptrCast(@alignCast(ptr));
    try testing.expect(string.len == str_ptr.len);
    try testing.expect(std.mem.eql(u8, string, str_ptr.*));
}
