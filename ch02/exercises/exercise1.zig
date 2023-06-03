// this exercise will ask the user for their age 
// and print a result corresponding to it
const std = @import("std");
const io = std.io;
// to read from stdin, we use .getStdIn() to get the `File` type
// using the .reader() method, we can get the `Reader` type
const stdin = io.getStdIn().reader();
// to output to stdout instead of stderr, we need to use .getStdOut
// which gives us the `File` type, with the .writer() method we get
// the `Writer` type
const stdout = io.getStdOut().writer();

pub fn main() !void {
    // prompt user for input
    try stdout.print("Please enter your age: ", .{});
    // buffer to read user input from
    var buffer: [10]u8 = undefined;
    // read from stdin and get age
    var age: u8 = undefined;
    // reads till we enter a new line and extracts the user input out from ?[]u8
    // if there is something, we will parse the string into an integer `u8`
    if (try stdin.readUntilDelimiterOrEof(buffer[0..], '\n')) 
    |user_input| {
        age = try std.fmt.parseInt(u8, user_input, 10);
    }
    // if there is no user input (`null`), then we will simply have age = 0
    else {
        age = 0;
    }
    // now we will have if statements to determine our output
    if (age >= 1 and age <= 12) {
        try stdout.print("You are a kid!", .{});
    } else if (age > 12 and age <= 19) {
        try stdout.print("You are an adolescent!", .{});
    } else if (age > 19 and age < 60) {
        try stdout.print("You are an adult :(", .{});
    } else if (age > 60) {
        try stdout.print("You are a senior citizen!", .{});
    } else {
        try stdout.print("Were you born?", .{});
    }
}
