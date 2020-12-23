//!
//! This file generated automatically from xselinux.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "SELinux", .global_id = 0 };

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major": u8,
    @"client_minor": u8,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"server_major": u16,
    @"server_minor": u16,
};

/// @brief SetDeviceCreateContextRequest
pub const SetDeviceCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"context_len": u32,
    @"context": [*]u8,
};

/// @brief GetDeviceCreateContextcookie
pub const GetDeviceCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceCreateContextRequest
pub const GetDeviceCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
};

/// @brief GetDeviceCreateContextReply
pub const GetDeviceCreateContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief SetDeviceContextRequest
pub const SetDeviceContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"device": u32,
    @"context_len": u32,
    @"context": [*]u8,
};

/// @brief GetDeviceContextcookie
pub const GetDeviceContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceContextRequest
pub const GetDeviceContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"device": u32,
};

/// @brief GetDeviceContextReply
pub const GetDeviceContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief SetWindowCreateContextRequest
pub const SetWindowCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"context_len": u32,
    @"context": [*]u8,
};

/// @brief GetWindowCreateContextcookie
pub const GetWindowCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetWindowCreateContextRequest
pub const GetWindowCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
};

/// @brief GetWindowCreateContextReply
pub const GetWindowCreateContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief GetWindowContextcookie
pub const GetWindowContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetWindowContextRequest
pub const GetWindowContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetWindowContextReply
pub const GetWindowContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief ListItem
pub const ListItem = extern struct {
    @"name": xcb.ATOM,
    @"object_context_len": u32,
    @"data_context_len": u32,
    @"object_context": [*]u8,
    @"data_context": [*]u8,
};

/// @brief SetPropertyCreateContextRequest
pub const SetPropertyCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"context_len": u32,
    @"context": [*]u8,
};

/// @brief GetPropertyCreateContextcookie
pub const GetPropertyCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyCreateContextRequest
pub const GetPropertyCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
};

/// @brief GetPropertyCreateContextReply
pub const GetPropertyCreateContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief SetPropertyUseContextRequest
pub const SetPropertyUseContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"context_len": u32,
    @"context": [*]u8,
};

/// @brief GetPropertyUseContextcookie
pub const GetPropertyUseContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyUseContextRequest
pub const GetPropertyUseContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
};

/// @brief GetPropertyUseContextReply
pub const GetPropertyUseContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief GetPropertyContextcookie
pub const GetPropertyContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyContextRequest
pub const GetPropertyContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"property": xcb.ATOM,
};

/// @brief GetPropertyContextReply
pub const GetPropertyContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief GetPropertyDataContextcookie
pub const GetPropertyDataContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyDataContextRequest
pub const GetPropertyDataContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"property": xcb.ATOM,
};

/// @brief GetPropertyDataContextReply
pub const GetPropertyDataContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief ListPropertiescookie
pub const ListPropertiescookie = struct {
    sequence: c_uint,
};

/// @brief ListPropertiesRequest
pub const ListPropertiesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief ListPropertiesReply
pub const ListPropertiesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"properties_len": u32,
    @"pad1": [20]u8,
    @"properties": [*]xcb.selinux.ListItem,
};

/// @brief SetSelectionCreateContextRequest
pub const SetSelectionCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"context_len": u32,
    @"context": [*]u8,
};

/// @brief GetSelectionCreateContextcookie
pub const GetSelectionCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionCreateContextRequest
pub const GetSelectionCreateContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
};

/// @brief GetSelectionCreateContextReply
pub const GetSelectionCreateContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief SetSelectionUseContextRequest
pub const SetSelectionUseContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"context_len": u32,
    @"context": [*]u8,
};

/// @brief GetSelectionUseContextcookie
pub const GetSelectionUseContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionUseContextRequest
pub const GetSelectionUseContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
};

/// @brief GetSelectionUseContextReply
pub const GetSelectionUseContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief GetSelectionContextcookie
pub const GetSelectionContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionContextRequest
pub const GetSelectionContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"selection": xcb.ATOM,
};

/// @brief GetSelectionContextReply
pub const GetSelectionContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief GetSelectionDataContextcookie
pub const GetSelectionDataContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionDataContextRequest
pub const GetSelectionDataContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"selection": xcb.ATOM,
};

/// @brief GetSelectionDataContextReply
pub const GetSelectionDataContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

/// @brief ListSelectionscookie
pub const ListSelectionscookie = struct {
    sequence: c_uint,
};

/// @brief ListSelectionsRequest
pub const ListSelectionsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
};

/// @brief ListSelectionsReply
pub const ListSelectionsReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"selections_len": u32,
    @"pad1": [20]u8,
    @"selections": [*]xcb.selinux.ListItem,
};

/// @brief GetClientContextcookie
pub const GetClientContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetClientContextRequest
pub const GetClientContextRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"resource": u32,
};

/// @brief GetClientContextReply
pub const GetClientContextReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": [*]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
