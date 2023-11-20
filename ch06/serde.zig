const std = @import("std");
const json = std.json;
/// A generic structure to Serialize/Deserialize a type
pub fn SerdeJSON(comptime T: type) type {
    return struct {
        allocator: std.mem.Allocator,
        val_string: []const u8 = undefined,
        val: json.Parsed(T) = undefined,
        const Self = @This();
        /// Initialize given an allocator to use
        pub fn init(allocator: std.mem.Allocator) Self {
            return .{ .allocator = allocator };
        }
        /// Deinitalizes the values created
        pub fn deinit(self: *Self) void {
            self.allocator.free(self.val_string);
            self.val.deinit();
        }

        /// Deserialized a string into the type `T` given
        pub fn deser(self: *Self, string: []const u8) !void {
            self.val = try json.parseFromSlice(T, self.allocator, string, .{});
        }
        /// Returns the inner value from `json.Parsed(T)`
        pub fn value(self: Self) T {
            return self.val.value;
        }

        // zig fmt: off
        /// Serializes a value into a JSON string
        pub fn ser(self: *Self, val: T) !void {
            self.val_string = try json.stringifyAlloc(self.allocator, val, 
            .{ .emit_strings_as_arrays = false, .whitespace = .indent_tab });
        }
    };
}

// zig fmt: on
// A structure to represent a Person
const Person = struct {
    name: []const u8,
    age: u8,

    const Self = @This();

    /// Returns a default Person
    pub fn default() Self {
        return .{ .name = "Person", .age = 20 };
    }
    /// Checks if two Persons are equal
    pub fn equal(a: Self, b: Self) bool {
        return std.mem.eql(u8, a.name, b.name) and a.age == b.age;
    }
};

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    defer {
        const check = gpa.deinit();
        if (check == .leak) @panic("MEMORY LEAK");
    }
    // Create a default person
    const person = Person.default();
    std.debug.print("Default:\n\t{any}\n", .{person});
    // Create a new SerdeJSON instance with Person as T
    var person_sj = SerdeJSON(Person).init(allocator);
    defer person_sj.deinit();
    // Serialize `person` as a JSON string
    try person_sj.ser(person);
    std.debug.print("Serialized:\n{s}\n", .{person_sj.val_string});
    try person_sj.deser(person_sj.val_string);
    std.debug.print("Deserialized:\n\t{any}\n", .{person_sj.value()});
    std.debug.print("Equal? {}\n", .{Person.equal(person, person_sj.value())});
}

