const std = @import("std");

const Status = enum{
    Todo, 
    In_Progress, 
    Completed, 
};


pub fn main() !void{
    const todo = Status.Todo;
    const inprog = Status.In_Progress;
    const completed = Status.Completed;

    std.debug.print("Todo: {any}\n", .{todo});
    std.debug.print("In Progress: {any}\n", .{inprog});
    std.debug.print("Completed: {any}\n", .{completed});

}