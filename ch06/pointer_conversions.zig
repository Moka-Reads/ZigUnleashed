const std = @import("std");
const expect = std.testing.expect;

// These tests are from the Zig language reference for
// v0.11.0, this can be found at:
// https://ziglang.org/documentation/0.11.0/

test "@intFromPtr and @ptrFromInt" {
    const ptr: *i32 = @ptrFromInt(0xdeadbee0);
    const addr = @intFromPtr(ptr);
    try expect(@TypeOf(addr) == usize);
    try expect(addr == 0xdeadbee0);
}

test "pointer casting with @ptrCast" {
    // aligns the bytes array 0x12121212 to u32 using
    // align(@alignOf(T)) -> aligns each of the elements to T
    const bytes align(@alignOf(u32)) = [_]u8{ 0x12, 0x12, 0x12, 0x12 };
    const u32_ptr: *const u32 = @ptrCast(&bytes);
    try expect(u32_ptr.* == 0x12121212);
}
