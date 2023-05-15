const std = @import("std");

pub fn main() !void {
    const str = "hello world";
    const hash_str = hash(str);
    std.debug.print("Hashed Version: {}", .{hash_str});
}

// hashes a string using the djb2 algorihtm
// requires a string ([]const u8)
// will return a number
// to avoid possible overflow we use `u64'
fn hash(str: []const u8) u64 {
    // initialize hash value at 5381
    var h: u64 = 5381;
    // loop through each character in the string
    for (str) |_, char| {
        // update the hash using the djb2 algorithm:
        h = ((h << 5) + h) + @intCast(u64, char);
    }
    // return the hash
    return h;
}
