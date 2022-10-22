const std = @import("std");

pub fn main() anyerror!void {
    const bytes = "Hello, world!";
    std.debug.print("{s}\n", .{@typeName(@TypeOf(bytes))});
    std.debug.print("{d}\n", .{bytes.len});
    std.debug.print("{c}\n", .{bytes[1]});
    std.debug.print("{d}\n", .{bytes[5]});
    std.debug.print("{}\n", .{'e' ==  '\x65'});
    std.debug.print("{d}\n", .{'\u{1f4a9}'});
    std.debug.print("{d}\n", .{'☺'});
    std.debug.print("{}\n", .{std.mem.eql(u8, "hello", "h\x65ello")});
    std.debug.print("0x{x}\n", .{"\xff"[0]});
    std.debug.print("{u}\n", .{'⚡'});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
