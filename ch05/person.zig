const std = @import("std");

const Person = struct{
    name: []const u8, 
    age: u8, 

    // Use @This() to get a reference of the struct 
    const Self = @This();

    // Declare a constructor using the convention `init`
    // This will return a new instance of Self or Person 
    pub fn init() Self{
        std.debug.print("Person initialized\n", .{});
        return .{.name = "Name", .age = 20};
    }

    // Declare a destructor using the convention `deinit` 
    // This will take a mutable reference using `*Self`, and return `void` 
    pub fn deinit(self: *Self) void{
        std.debug.print("Person {s} deinitialized\n", .{self.name});
    }

    // Method to display the person's info, we will take 
    // an immutable reference using `Self` and return `void`
    pub fn display(self: Self) void{
        std.debug.print("Person name: {s}\n", .{self.name});
        std.debug.print("Person age: {d}\n", .{self.age});
    }
};


pub fn main() !void{
    var person = Person.init();
    defer person.deinit();

    person.display();
}