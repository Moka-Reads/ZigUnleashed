const std = @import("std");
const io = std.io;
const fs = std.fs;

// Retrieve standard input reader and standard output writer
const stdin = io.getStdIn().reader();
const stdout = io.getStdOut().writer();
const FixedBufferStreamer = io.FixedBufferStream([]u8);

// File path to save user input
const PATH = "user_manifesto.txt";

pub fn main() !void {
    // Prompt the user for input
    try stdout.print("Please enter your greatness: \n", .{});

    // Buffer to store user input
    var buffer: [255]u8 = undefined;
    var streamer = FixedBufferStreamer{ .pos = 0, .buffer = &buffer };
    try stdin.streamUntilDelimiter(streamer.writer(), '\n', null);
    // Create the file for writing, truncating any existing content
    var file = try fs.cwd().createFile(PATH, .{ .read = true, .truncate = true });
    defer file.close();

    // Write the user input to the file
    // ignore the bytes returned by the function
    _ = try fs.File.write(file, streamer.buffer[0..streamer.pos]);

    // Print success message
    try stdout.print("Successfully saved!", .{});
}
