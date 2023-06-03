const std = @import("std");
const io = std.io;
const fs = std.fs;

// Retrieve standard input reader and standard output writer
const stdin = io.getStdIn().reader();
const stdout = io.getStdOut().writer();

// File path to save user input
const PATH = "user_manifesto.txt";

pub fn main() !void {
    // Prompt the user for input
    try stdout.print("Please enter your greatness: \n", .{});

    // Buffer to store user input
    var buffer: [255]u8 = undefined;

    // Read user input until a newline character is encountered
    if (try stdin.readUntilDelimiterOrEof(buffer[0..], '\n')) |user_input| {
        // Create the file for writing, truncating any existing content
        var file = try fs.cwd().createFile(PATH, .{ .read = true, .truncate = true });
        defer file.close();

        // Write the user input to the file
        // ignore the bytes returned by the function
        _ = try fs.File.write(file, user_input);

        // Print success message
        try stdout.print("Successfully saved!", .{});
    } else {
        // Failed to read user input
        try stdout.print("Failed to read user input!", .{});
    }
}
