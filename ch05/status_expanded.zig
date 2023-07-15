const std = @import("std");
const stdout = std.io.getStdOut().writer();

const Status = enum{
    Todo, 
    In_Progress, 
    Completed, 

    const Self = @This();

    fn init() Self{
        return Self.Todo;
    }

    fn update(self: *Self) void{
        switch (self.*){
            .Todo => self.* = .In_Progress, 
            .In_Progress => self.* = .Completed, 
            .Completed => std.debug.print("Nothing to update!\n", .{})
        }
    }

    fn display(self: Self) !void{
        switch(self) {
            .Todo => {
                try stdout.print("Todo\n", .{});
            }, 
            .In_Progress => {
                try stdout.print("In Progress\n", .{});
            }, 
            .Completed => {
                try stdout.print("Completed\n", .{});
            }
        }
    }
};


pub fn main() !void{
    var todo = Status.init();
    var inprog = Status.In_Progress;

    try todo.display();
    todo.update();
    if(todo == inprog){
        try todo.display();
        inprog.update();
    }
    try inprog.display();
}