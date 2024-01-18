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
/// A streamer that uses a fixed-size buffer for reading and writing data.
const FixedBufferStreamer = io.FixedBufferStream([]u8);

pub fn main() !void {
    // prompt user for input
    try stdout.print("Please enter your age: ", .{});
    // buffer to read user input from
    var buffer: [10]u8 = undefined;
    // initialize age as `undefined` 
    var age: u8 = undefined;
    // stream I/O using `FixedBufferStreamer` with starting position and buffer
    var streamer = FixedBufferStreamer{.pos = 0, .buffer = &buffer};
    // read from stdin and write to streamer until theres a newline 
    try stdin.streamUntilDelimiter(streamer.writer(), '\n', null);
    // parse integer to `u8` with buffer from [0..pos] and as a base 10 number 
    age = try std.fmt.parseInt(u8, streamer.buffer[0..streamer.pos], 10);
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
