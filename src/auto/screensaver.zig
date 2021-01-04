//!
//! This file generated automatically from screensaver.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "MIT-SCREEN-SAVER", .global_id = 0 };

pub const Kind = extern enum(c_uint) {
    @"Blanked" = 0,
    @"Internal" = 1,
    @"External" = 2,
};

pub const Event = extern enum(c_uint) {
    @"NotifyMask" = 1,
    @"CycleMask" = 2,
};

pub const State = extern enum(c_uint) {
    @"Off" = 0,
    @"On" = 1,
    @"Cycle" = 2,
    @"Disabled" = 3,
};

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major_version": u8,
    @"client_minor_version": u8,
    @"pad0": [2]u8,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"server_major_version": u16,
    @"server_minor_version": u16,
    @"pad1": [20]u8,
};

/// @brief QueryInfocookie
pub const QueryInfocookie = struct {
    sequence: c_uint,
};

/// @brief QueryInfoRequest
pub const QueryInfoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief QueryInfoReply
pub const QueryInfoReply = struct {
    @"response_type": u8,
    @"state": u8,
    @"sequence": u16,
    @"length": u32,
    @"saver_window": xcb.WINDOW,
    @"ms_until_server": u32,
    @"ms_since_user_input": u32,
    @"event_mask": u32,
    @"kind": u8,
    @"pad0": [7]u8,
};

/// @brief SelectInputRequest
pub const SelectInputRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"event_mask": u32,
};

/// @brief SetAttributesRequest
pub const SetAttributesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"border_width": u16,
    @"class": u8,
    @"depth": u8,
    @"visual": xcb.VISUALID,
    @"value_mask": u32,
};

/// @brief UnsetAttributesRequest
pub const UnsetAttributesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief SuspendRequest
pub const SuspendRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"suspend": u8,
    @"pad0": [3]u8,
};

/// Opcode for Notify.
pub const NotifyOpcode = 0;

/// @brief NotifyEvent
pub const NotifyEvent = struct {
    @"response_type": u8,
    @"state": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"root": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"kind": u8,
    @"forced": u8,
    @"pad0": [14]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
