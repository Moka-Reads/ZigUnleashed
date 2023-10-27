const std = @import("std");
const json = std.json;

/// A generic structure to Serialize/Deserialize a type
pub fn SerdeJSON(comptime T: type) type {
    return struct {
        // Only field required is an allocator for serializng and deserializing 
        allocator: std.mem.Allocator,
        const Self = @This();
        /// Initialize given an allocator to use 
        pub fn init(allocator: std.mem.Allocator) Self {
            return .{ .allocator = allocator };
        }
        /// Deserialized a string into the type `T` given 
        pub fn deser(self: Self, string: []const u8) !T {
            const parse = try json.parseFromSlice(T, self.allocator, string, .{});
            return parse.value;
        }
        /// Serializes a value into a JSON string 
        pub fn ser(self: Self, val: T) ![]const u8 {
            const string = try json.stringifyAlloc(self.allocator, val, .{ .emit_strings_as_arrays = false });
            return string;
        }
    };
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    defer{
        const check = gpa.deinit();
        if(check == .leak) @panic("MEMORY LEAK");
    }

    // A structure to represent a Person
    const Person = struct {
        name: []const u8,
        age: u8,

        const Self = @This();

        pub fn default() Self {
            return .{ .name = "Person", .age = 20 };
        }
        pub fn equal(a: Self, b: Self) bool {
            return std.mem.eql(u8, a.name, b.name) and a.age == b.age;
        }
    };
    // Create a default person 
    const person = Person.default();
    std.debug.print("Default: {any}\n", .{person});
    // Create a new SerdeJSON instance with Person as T
    const person_sj = SerdeJSON(Person).init(allocator);
    // Serialize `person` as a JSON string 
    const str = try person_sj.ser(person);
    std.debug.print("Serialized: {s}\n", .{str});
    const person_der = try person_sj.deser(str);
    std.debug.print("Deserialized: {any}\n", .{person_der});
    std.debug.print("Equal? {}\n", .{Person.equal(person, person_der)});
}
