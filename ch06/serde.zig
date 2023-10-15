const std = @import("std");
const json = std.json;

// The goal of this program is to create
// a generic data structure to Serialize/Deserialize a type

pub fn Serde(comptime T: type) type {
    return struct {
        allocator: std.mem.Allocator,

        const Self = @This();
        pub fn init(allocator: std.mem.Allocator) Self {
            return .{ .allocator = allocator };
        }
        pub fn deser(self: Self, string: []const u8) !T {
            const parse = try json.parseFromSlice(T, self.allocator, string, .{});
            return parse.value;
        }
        pub fn ser(self: Self, val: T) ![]const u8 {
            const string = try json.stringifyAlloc(self.allocator, val, .{ .emit_strings_as_arrays = false });
            return string;
        }
    };
}
