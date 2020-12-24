const std = @import("std");

const meta = std.meta;
const testing = std.testing;

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

pub fn offsetOf(bytes: []const u8, comptime T: type, comptime field_name: []const u8) usize {
    var res: usize = 0;
    inline for (str.fields) |field| {
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
    _ = fieldInfo(T, field_name);
    return res;
}

fn FieldIterateType(comptime T: type) type {
    switch (@typeInfo(T)) {
        .Pointer => |ptr| return ptr.child,
        else => return T,
    }
}

fn fieldLen(bytes: []const u8, comptime T: type, comptime field: []const u8) usize {
    const instance = @ptrCast(*align(1) const T, bytes.ptr);
    const info = meta.fieldInfo(T, field);
    switch (@typeInfo(info.field_type)) {
        .Pointer => |ptr| {
            // This assumes that `_len` fields are always at a fixed
            // offset from the start of the struct and before the
            // data field. I think this is pretty safe to assume,
            // I haven't confirmed this.
            return @field(instance, info.name ++ "_len");
        },
        else => return 1,
    }
}
