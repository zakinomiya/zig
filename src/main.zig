const expect = @import("std").testing.expect;
const std = @import("std");

fn fibo(n: u8) u8 {
    return switch (n) {
        0 => 0,
        1 => 1,
        else => fibo(n - 1) + fibo(n - 2),
    };
}

pub fn main() void {
    const a = fibo(9);
    std.debug.print("{d}\n", .{a});
}

test "fibonacci" {
    try expect(fibo(0) == 0);
    try expect(fibo(1) == 1);
    try expect(fibo(2) == 1);
    try expect(fibo(3) == 2);
    try expect(fibo(4) == 3);
    try expect(fibo(5) == 5);
    try expect(fibo(6) == 8);
    try expect(fibo(7) == 13);
    try expect(fibo(8) == 21);
    try expect(fibo(9) == 34);
    try expect(fibo(10) == 55);
}
