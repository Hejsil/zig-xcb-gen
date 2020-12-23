//!
//! This file generated automatically from xevie.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XEVIE", .global_id = 0 };

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major_version": u16,
    @"client_minor_version": u16,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"server_major_version": u16,
    @"server_minor_version": u16,
    @"pad1": [20]u8,
};

/// @brief Startcookie
pub const Startcookie = struct {
    sequence: c_uint,
};

/// @brief StartRequest
pub const StartRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"screen": u32,
};

/// @brief StartReply
pub const StartReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
};

/// @brief Endcookie
pub const Endcookie = struct {
    sequence: c_uint,
};

/// @brief EndRequest
pub const EndRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"cmap": u32,
};

/// @brief EndReply
pub const EndReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
};

pub const Datatype = extern enum(c_uint) {
    @"Unmodified" = 0,
    @"Modified" = 1,
};

/// @brief Event
pub const Event = extern struct {
    @"pad0": [32]u8,
};

/// @brief Sendcookie
pub const Sendcookie = struct {
    sequence: c_uint,
};

/// @brief SendRequest
pub const SendRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"event": xcb.xevie.Event,
    @"data_type": u32,
    @"pad0": [64]u8,
};

/// @brief SendReply
pub const SendReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
};

/// @brief SelectInputcookie
pub const SelectInputcookie = struct {
    sequence: c_uint,
};

/// @brief SelectInputRequest
pub const SelectInputRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"event_mask": u32,
};

/// @brief SelectInputReply
pub const SelectInputReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
