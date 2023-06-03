const std = @import("std");

fn lcpLength(str1: []const u8, str2: []const u8) u32 {
    var i: u32 = 0;
    while (i < str1.len and i < str2.len and str1[i] == str2[i]) {
        i += 1;
    }
    return i;
}

test "lcpLength - equal strings" {
    const expected: u32 = 6;
    const actual: u32 = lcpLength("ABCDEF", "ABCDEF");
    try std.testing.expectEqual(expected, actual);
}

test "lcpLength - different strings" {
    const expected: u32 = 0;
    const actual: u32 = lcpLength("ABCDEF", "GHIJKL");
    try std.testing.expectEqual(expected, actual);
}

test "lcpLength - common prefix" {
    const expected: u32 = 4;
    const actual: u32 = lcpLength("ABCDEF", "ABCDXY");
    try std.testing.expectEqual(expected, actual);
}

test "lcpLength - different lengths" {
    const expected: u32 = 3;
    const actual: u32 = lcpLength("ABC", "ABCDEFG");
    try std.testing.expectEqual(expected, actual);
}