const std = @import("std");
const testing = std.testing;

fn countVowels(str: []const u8) u32 {
    var count: u32 = 0;
    for (str) |char| {
        switch (char) {
            'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U' => count += 1,
            else => {},
        }
    }
    return count;
}

test "few vowels" {
    const str = "hello world";
    const expected: u32 = 3;
    const actual: u32 = countVowels(str);
    try testing.expectEqual(expected, actual);
}

test "lipogram" {
    const lipo = "Shh, try my rhythm myth";
    const expected: u32 = 0;
    const actual: u32 = countVowels(lipo);
    try testing.expectEqual(expected, actual);
}

test "pangram" {
    const pang = "The quick brown fox jumps over the lazy dog";
    const expected: u32 = 11;
    const actual: u32 = countVowels(pang);
    try testing.expectEqual(expected, actual);
}
