const std = @import("std");

const debug = std.debug;
const io = std.io;
const mem = std.mem;
const meta = std.meta;
const testing = std.testing;

/// Given a type `T`, used as a description of how the data
/// is layed out, figure out exaclty how big the type that
/// is stored in `bytes` is. For ints, this function is a
/// simple `@sizeOf` and for arrays, this is a loop over
/// it's size, calling `sizeOf` N times. For structs, the
/// size is an iteration over all fields, calling `sizeOf`
/// on each field type. Certain fields have special meaning.
/// If a field is of type `[*]T`, then this field is
/// interpreted as a N `T`s, where N is determined by a field
/// called `<field_name>_len`. If no such field exists, a
/// compiler error is thrown. If this field is declared after
/// the pointer field, then this function will loop forever
/// (TODO: make this a compiler error).
pub fn sizeOf(bytes: []const u8, comptime T: type) usize {
    var res: usize = 0;
    switch (@typeInfo(T)) {
        .Int => res += @sizeOf(T),
        .Array => |arr| {
            var i: usize = 0;
            while (i < arr.len) : (i += 1)
                res += sizeOf(bytes[res..], arr.child);
        },
        .Struct => |str| {
            inline for (str.fields) |field| {
                const len = fieldLen(bytes, T, field.name);
                const Type = FieldIterateType(field.field_type);

                var i: usize = 0;
                while (i < len) : (i += 1) {
                    res += sizeOf(bytes[res..], Type);
                }
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
        .Pointer,
        .Type,
        .Undefined,
        .Union,
        .Vector,
        .Void,
        => comptime unreachable,
    }

    return res;
}

test "sizeOf" {
    testing.expectEqual(@as(usize, 1), sizeOf("0" ** 1, u8));
    testing.expectEqual(@as(usize, 2), sizeOf("0" ** 2, u16));
    testing.expectEqual(@as(usize, 4), sizeOf("0" ** 4, u32));

    testing.expectEqual(@as(usize, 2), sizeOf("0" ** 2, [2]u8));
    testing.expectEqual(@as(usize, 4), sizeOf("0" ** 4, [2]u16));
    testing.expectEqual(@as(usize, 8), sizeOf("0" ** 8, [2]u32));

    const S1 = struct {
        a: u8,
        b: u16,
    };
    testing.expectEqual(@as(usize, 3), sizeOf("0" ** 3, S1));

    const S2 = struct {
        a_len: u8,
        a: [*]u8,
    };
    testing.expectEqual(@as(usize, 4), sizeOf("\x03000", S2));

    const S3 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        a: [*]u16,
    };
    testing.expectEqual(@as(usize, 9), sizeOf("0\x030000000", S3));

    const S4 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        c_len: u8,
        a: [*]u16,
        h: u8,
        c: [*]u32,
    };
    testing.expectEqual(@as(usize, 23), sizeOf("0\x030\x030000000000000000000", S4));
}

/// Finds the offset of the field of name `field_name` in `bytes`.
/// This function calls `sizeOf` of all fields in order until
/// `field_name` is reached. If no field in `T` has the name
/// of `field_name`, then this function will give a compiler
/// error. See `sizeOf` for how `T` relates to the `bytes`.
pub fn offsetOf(bytes: []const u8, comptime T: type, comptime field_name: []const u8) usize {
    var res: usize = 0;
    inline for (meta.fields(T)) |field| {
        if (comptime mem.eql(u8, field.name, field_name))
            break;

        const len = fieldLen(bytes, T, field.name);
        const Type = FieldIterateType(field.field_type);

        var i: usize = 0;
        while (i < len) : (i += 1) {
            res += sizeOf(bytes[res..], Type);
        }
    }

    // This call is just to validate that the field actually exists.
    _ = meta.fieldInfo(T, field_name);
    return res;
}

test "offsetOf" {
    const S1 = struct {
        a: u8,
        b: u16,
    };
    testing.expectEqual(@as(usize, 0), offsetOf("0" ** 3, S1, "a"));
    testing.expectEqual(@as(usize, 1), offsetOf("0" ** 3, S1, "b"));

    const S2 = struct {
        a_len: u8,
        a: [*]u8,
    };
    testing.expectEqual(@as(usize, 0), offsetOf("\x03000", S2, "a_len"));
    testing.expectEqual(@as(usize, 1), offsetOf("\x03000", S2, "a"));

    const S3 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        a: [*]u16,
    };
    testing.expectEqual(@as(usize, 0), offsetOf("0\x030000000", S3, "q"));
    testing.expectEqual(@as(usize, 1), offsetOf("0\x030000000", S3, "a_len"));
    testing.expectEqual(@as(usize, 2), offsetOf("0\x030000000", S3, "b"));
    testing.expectEqual(@as(usize, 3), offsetOf("0\x030000000", S3, "a"));

    const S4 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        c_len: u8,
        a: [*]u16,
        h: u8,
        c: [*]u32,
    };
    testing.expectEqual(@as(usize, 0), offsetOf("0\x030\x030000000000000000000", S4, "q"));
    testing.expectEqual(@as(usize, 1), offsetOf("0\x030\x030000000000000000000", S4, "a_len"));
    testing.expectEqual(@as(usize, 2), offsetOf("0\x030\x030000000000000000000", S4, "b"));
    testing.expectEqual(@as(usize, 3), offsetOf("0\x030\x030000000000000000000", S4, "c_len"));
    testing.expectEqual(@as(usize, 4), offsetOf("0\x030\x030000000000000000000", S4, "a"));
    testing.expectEqual(@as(usize, 10), offsetOf("0\x030\x030000000000000000000", S4, "h"));
    testing.expectEqual(@as(usize, 11), offsetOf("0\x030\x030000000000000000000", S4, "c"));
}

/// Gets a pointer to the field `field_name` in `bytes`.
/// This is a simple helper function that uses `offsetOf`
/// and does a pointer cast to get a pointer to the fields
/// type.
/// TODO: For fields of type `[*]T`, do something else.
///       Compiler error? Return pointer to start of
///       data+length?
pub fn fieldPtr(
    bytes: []const u8,
    comptime T: type,
    comptime field_name: []const u8,
) *align(1) const FieldType(T, field_name) {
    const offset = offsetOf(bytes, T, field_name);
    const Type = FieldType(T, field_name);
    const field_bytes = bytes[offset..][0..@sizeOf(Type)];
    return @ptrCast(*align(1) const Type, field_bytes);
}

test "fieldPtr" {
    const S1 = struct {
        a: u8,
        b: u16,
    };
    testing.expectEqual(@as(u8, 0x11), fieldPtr("\x11\x22\x22", S1, "a").*);
    testing.expectEqual(@as(u16, 0x2222), fieldPtr("\x11\x22\x22", S1, "b").*);

    const S2 = struct {
        a_len: u8,
        a: [*]u8,
    };
    testing.expectEqual(@as(u8, 3), fieldPtr("\x03000", S2, "a_len").*);
}

pub fn encode(writer: anytype, comptime T: type, value: anytype) !void {
    switch (@typeInfo(T)) {
        .Int => try writer.writeIntNative(T, value),
        .Array => |arr| {
            for (value) |item|
                try encode(writer, arr.child, item);
        },
        .Struct => |str| {
            // Validate that `T` have the fields `value` have. This ofc, does not mean
            // that `value` have all the fields `T` have. This will be validated in
            // the inline loop below.
            comptime for (meta.fields(@TypeOf(value))) |field| {
                if (!@hasField(T, field.name))
                    @compileError("'" ++ @typeName(T) ++ "' does not have field '" ++ field.name ++ "'");
            };

            inline for (meta.fields(T)) |field| {
                const Field = field.field_type;
                const field_info = @typeInfo(Field);
                // The `<field_name>_len` field in `T` will be populated with `<field_name>.len`
                if (comptime mem.endsWith(u8, field.name, "_len")) {
                    // If it acts like a slice, then it is a slice
                    const _slice = @field(value, field.name[0 .. field.name.len - 4]);
                    const slice = _slice[0.._slice.len];

                    const casted = @intCast(Field, slice.len);
                    try writer.writeIntNative(Field, casted);
                }
                // The Pointer fields will have the content of the slice of the
                // same name in `value` encoded inline.
                else if (field_info == .Pointer) {
                    // If it acts like a slice, then it is a slice
                    const _slice = @field(value, field.name);
                    const slice = _slice[0.._slice.len];

                    for (slice) |item| {
                        comptime debug.assert(@TypeOf(item) == field_info.Pointer.child);
                        try encode(writer, @TypeOf(item), item);
                    }

                    // TODO: Figure out exaclty what the padding rules are. Right now
                    //       we just pad byte slices
                    switch (field_info.Pointer.child) {
                        u8 => try writer.writeByteNTimes(0, mem.alignForward(slice.len, 4) - slice.len),
                        else => {},
                    }
                } else {
                    try encode(writer, Field, @field(value, field.name));
                }
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
        .Pointer,
        .Type,
        .Undefined,
        .Union,
        .Vector,
        .Void,
        => comptime unreachable,
    }
}

fn testEncode(expect: []const u8, comptime T: type, value: anytype) void {
    var buf: [mem.page_size]u8 = undefined;
    var fbs = io.fixedBufferStream(&buf);
    encode(fbs.writer(), T, value) catch unreachable;
    testing.expectEqualSlices(u8, expect, fbs.getWritten());
}

test "encode" {
    const S1 = struct {
        a: u8,
        b: u16,
    };
    testEncode("\x00\x00\x00", S1, .{ .a = 0, .b = 0 });
    testEncode("\x11\x22\x22", S1, .{ .a = 0x11, .b = 0x2222 });

    const S2 = struct {
        a_len: u8,
        a: [*]u8,
    };
    testEncode("\x00", S2, .{ .a = [_]u8{} });
    testEncode("\x03\x01\x02\x03\x00", S2, .{ .a = [_]u8{ 1, 2, 3 } });

    const S3 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        a: [*]u16,
    };
    testEncode("\x00\x00\x00", S3, .{ .q = 0, .b = 0, .a = [_]u16{} });
    testEncode("\x01\x02\x03\x44\x44\x55\x55", S3, .{
        .q = 1,
        .b = 3,
        .a = [_]u16{ 0x4444, 0x5555 },
    });

    const S4 = struct {
        q: u8,
        a_len: u8,
        b: u8,
        c_len: u8,
        a: [*]u16,
        h: u8,
        c: [*]u32,
    };
    testEncode("\x00\x00\x00\x00\x00", S4, .{
        .q = 0,
        .b = 0,
        .a = [_]u16{},
        .h = 0,
        .c = [_]u32{},
    });
    testEncode("\x01\x02\x03\x04\x55\x55\x66\x66\x07\x88\x88\x88\x88" ++
        "\x99\x99\x99\x99\xaa\xaa\xaa\xaa\xbb\xbb\xbb\xbb", S4, .{
        .q = 1,
        .b = 3,
        .a = [_]u16{ 0x5555, 0x6666 },
        .h = 7,
        .c = [_]u32{ 0x88888888, 0x99999999, 0xaaaaaaaa, 0xbbbbbbbb },
    });
}

fn FieldType(comptime T: type, comptime field_name: []const u8) type {
    return meta.fieldInfo(T, field_name).field_type;
}

fn FieldIterateType(comptime T: type) type {
    switch (@typeInfo(T)) {
        .Pointer => |ptr| return ptr.child,
        else => return T,
    }
}

fn fieldLen(bytes: []const u8, comptime T: type, comptime field: []const u8) usize {
    const info = meta.fieldInfo(T, field);
    switch (@typeInfo(info.field_type)) {
        .Pointer => |ptr| return fieldPtr(bytes, T, info.name ++ "_len").*,
        else => return 1,
    }
}
