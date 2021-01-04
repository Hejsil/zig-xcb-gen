const std = @import("std");

const debug = std.debug;
const io = std.io;
const mem = std.mem;
const meta = std.meta;
const testing = std.testing;

pub fn encode(writer: anytype, value: anytype) !void {
    const T = @TypeOf(value);
    switch (@typeInfo(T)) {
        .Int => try writer.writeIntNative(T, value),
        .Array => |arr| {
            for (value) |item|
                try encode(writer, item);
        },
        .Pointer => |ptr| {
            for (value) |item|
                try encode(writer, item);
            switch (ptr.child) {
                u8 => try writer.writeByteNTimes(0, mem.alignForward(value.len, 4) - value.len),
                else => {},
            }
        },
        .Struct => |str| {
            inline for (meta.fields(T)) |field| {
                try encode(writer, @field(value, field.name));
            }
        },

        .AnyFrame,
        .Bool,
        .BoundFn,
        .ComptimeFloat,
        .ComptimeInt,
        .Enum,
        .EnumLiteral,
        .ErrorSet,
        .ErrorUnion,
        .Float,
        .Fn,
        .Frame,
        .NoReturn,
        .Null,
        .Opaque,
        .Optional,
        .Type,
        .Undefined,
        .Union,
        .Vector,
        .Void,
        => comptime unreachable,
    }
}

pub fn decode(reader: anytype, allocator: *mem.Allocator, comptime T: type) !T {
    switch (@typeInfo(T)) {
        .Int => return try reader.readIntNative(T),
        .Array => |arr| {
            var res: T = undefined;
            for (res) |*item, i| {
                errdefer for (res[0..i]) |item2| {
                    free(item2, allocator);
                };

                item.* = try decode(reader, allocator, arr.child);
            }
            return res;
        },
        .Struct => |str| {
            var res: T = undefined;
            inline for (meta.fields(T)) |field, i| {
                errdefer inline for (meta.fields(T)) |field2, j| {
                    if (j <= i)
                        break;

                    free(@field(res, field2.name), allocator);
                };

                const Field = field.field_type;
                const field_info = @typeInfo(Field);
                if (field_info == .Pointer) {
                    const Child = field_info.Pointer.child;
                    const len = @field(res, field.name ++ "_len");
                    const slice = try allocator.alloc(Child, len);
                    errdefer allocator.free(slice);

                    for (slice) |*item, j| {
                        errdefer for (slice[0..j]) |item2| {
                            free(item2, allocator);
                        };

                        item.* = try decode(reader, allocator, Child);
                    }

                    switch (field_info.Pointer.child) {
                        u8 => try reader.skipBytes(mem.alignForward(len, 4) - slice.len, .{}),
                        else => {},
                    }
                    @field(res, field.name) = slice;
                } else {
                    @field(res, field.name) = try decode(reader, allocator, Field);
                }
            }
            return res;
        },

        .AnyFrame,
        .Bool,
        .BoundFn,
        .ComptimeFloat,
        .ComptimeInt,
        .Enum,
        .EnumLiteral,
        .ErrorSet,
        .ErrorUnion,
        .Float,
        .Fn,
        .Frame,
        .NoReturn,
        .Null,
        .Opaque,
        .Optional,
        .Pointer,
        .Type,
        .Undefined,
        .Union,
        .Vector,
        .Void,
        => comptime unreachable,
    }
}

fn testEncode(expect: []const u8, value: anytype) void {
    var buf: [mem.page_size]u8 = undefined;
    var fbs = io.fixedBufferStream(&buf);
    encode(fbs.writer(), value) catch unreachable;
    testing.expectEqualSlices(u8, expect, fbs.getWritten());

    fbs = io.fixedBufferStream(fbs.getWritten());
    const res = decode(fbs.reader(), testing.allocator, @TypeOf(value)) catch unreachable;
    defer free(res, testing.allocator);

    expectEql(value, res);
}

fn expectEql(a: anytype, b: @TypeOf(a)) void {
    switch (@typeInfo(@TypeOf(a))) {
        .Int => testing.expectEqual(a, b),
        .Array => {
            for (a) |_, i|
                expectEql(a[i], b[i]);
        },
        .Pointer => |ptr| switch (ptr.size) {
            .Slice => {
                for (a) |_, i|
                    expectEql(a[i], b[i]);
            },
            else => comptime unreachable,
        },
        .Struct => |str| {
            inline for (str.fields) |field|
                expectEql(@field(a, field.name), @field(b, field.name));
        },

        .AnyFrame,
        .Bool,
        .BoundFn,
        .ComptimeFloat,
        .ComptimeInt,
        .Enum,
        .EnumLiteral,
        .ErrorSet,
        .ErrorUnion,
        .Float,
        .Fn,
        .Frame,
        .NoReturn,
        .Null,
        .Opaque,
        .Optional,
        .Type,
        .Undefined,
        .Union,
        .Vector,
        .Void,
        => comptime unreachable,
    }
}

pub fn free(value: anytype, allocator: *mem.Allocator) void {
    const T = @TypeOf(value);
    switch (@typeInfo(T)) {
        .Int => {},
        .Array => |arr| {
            for (value) |item|
                free(item, allocator);
        },
        .Pointer => {
            for (value) |item|
                free(item, allocator);
            allocator.free(value);
        },
        .Struct => |str| {
            inline for (meta.fields(T)) |field|
                free(@field(value, field.name), allocator);
        },

        .AnyFrame,
        .Bool,
        .BoundFn,
        .ComptimeFloat,
        .ComptimeInt,
        .Enum,
        .EnumLiteral,
        .ErrorSet,
        .ErrorUnion,
        .Float,
        .Fn,
        .Frame,
        .NoReturn,
        .Null,
        .Opaque,
        .Optional,
        .Type,
        .Undefined,
        .Union,
        .Vector,
        .Void,
        => @compileError("'{" ++ @typeName(T) ++ "}' not supported"),
    }
}

test "encode/decode/free" {
    const S1 = struct {
        a: u8,
        b: u16,
    };
    testEncode("\x00\x00\x00", S1{ .a = 0, .b = 0 });
    testEncode("\x11\x22\x22", S1{ .a = 0x11, .b = 0x2222 });

    const S2 = struct {
        a_len: u8,
        a: []const u8,
    };
    testEncode("\x00", S2{ .a_len = 0, .a = "" });
    testEncode("\x03\x01\x02\x03\x00", S2{ .a_len = 3, .a = &[_]u8{ 1, 2, 3 } });

    const S3 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        a: []const u16,
    };
    testEncode("\x00\x00\x00", S3{ .q = 0, .a_len = 0, .b = 0, .a = &[_]u16{} });
    testEncode("\x01\x02\x03\x44\x44\x55\x55", S3{
        .q = 1,
        .a_len = 2,
        .b = 3,
        .a = &[_]u16{ 0x4444, 0x5555 },
    });

    const S4 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        c_len: u8,
        a: []const u16,
        h: u8,
        c: []const u32,
    };
    testEncode("\x00\x00\x00\x00\x00", S4{
        .q = 0,
        .a_len = 0,
        .b = 0,
        .c_len = 0,
        .a = &[_]u16{},
        .h = 0,
        .c = &[_]u32{},
    });
    testEncode("\x01\x02\x03\x04\x55\x55\x66\x66\x07\x88\x88\x88\x88" ++
        "\x99\x99\x99\x99\xaa\xaa\xaa\xaa\xbb\xbb\xbb\xbb", S4{
        .q = 1,
        .a_len = 2,
        .b = 3,
        .c_len = 4,
        .a = &[_]u16{ 0x5555, 0x6666 },
        .h = 7,
        .c = &[_]u32{ 0x88888888, 0x99999999, 0xaaaaaaaa, 0xbbbbbbbb },
    });

    const S5 = struct {
        a_len: u8,
        a: []const S2,
    };
    testEncode("\x00", S5{ .a_len = 0, .a = &[_]S2{} });
    testEncode("\x01\x00", S5{ .a_len = 1, .a = &[_]S2{.{ .a_len = 0, .a = "" }} });
    testEncode("\x01\x03\x01\x02\x03\x00", S5{ .a_len = 1, .a = &[_]S2{.{ .a_len = 3, .a = "\x01\x02\x03" }} });
    testEncode("\x04\x01\x01\x00\x00\x00\x02\x01\x02\x00\x00" ++
        "\x03\x01\x02\x03\x00\x04\x01\x02\x03\x04", S5{
        .a_len = 4,
        .a = &[_]S2{
            .{ .a_len = 1, .a = "\x01" },
            .{ .a_len = 2, .a = "\x01\x02" },
            .{ .a_len = 3, .a = "\x01\x02\x03" },
            .{ .a_len = 4, .a = "\x01\x02\x03\x04" },
        },
    });
}
