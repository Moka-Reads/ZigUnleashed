const std = @import("std");
const testing = std.testing;

test "basic test" {
    const a = 50;
    const b = 32;
    // expects an okay value, if false we panic
    try testing.expect(a + b == 82);
}

test "equal" {
    const a = 43;
    const b = 32;
    // checks if expected is equal to actual
    try testing.expectEqual(a / b, 1);
}

// this should fail
test "strings" {
    const exp = "this is expected";
    const actual = "this is actual";
    // expected vs actual
    try testing.expectEqualStrings(exp, actual);
}
