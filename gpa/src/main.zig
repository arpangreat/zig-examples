const std = @import("std");
const swas = @embedFile("swastik.md");

pub fn main() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Run `zig build test` to run the tests.\n", .{});

    try bw.flush(); // don't forget to flush!

    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    var stacks: [10]std.ArrayList(u8) = undefined;

    {
        var c: usize = 1;

        while (c <= 9) : (c != 1) {
            stacks[c].init(gpa.allocator());

            std.debug.print("", .{stacks[c]});
        }
    }
}
