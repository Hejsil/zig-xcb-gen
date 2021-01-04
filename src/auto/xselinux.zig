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
pub const QueryVersionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major": u8,
    @"client_minor": u8,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"server_major": u16,
    @"server_minor": u16,
};

/// @brief SetDeviceCreateContextRequest
pub const SetDeviceCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"context_len": u32,
    @"context": []const u8,
};

/// @brief GetDeviceCreateContextcookie
pub const GetDeviceCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceCreateContextRequest
pub const GetDeviceCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
};

/// @brief GetDeviceCreateContextReply
pub const GetDeviceCreateContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief SetDeviceContextRequest
pub const SetDeviceContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"device": u32,
    @"context_len": u32,
    @"context": []const u8,
};

/// @brief GetDeviceContextcookie
pub const GetDeviceContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceContextRequest
pub const GetDeviceContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"device": u32,
};

/// @brief GetDeviceContextReply
pub const GetDeviceContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief SetWindowCreateContextRequest
pub const SetWindowCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"context_len": u32,
    @"context": []const u8,
};

/// @brief GetWindowCreateContextcookie
pub const GetWindowCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetWindowCreateContextRequest
pub const GetWindowCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
};

/// @brief GetWindowCreateContextReply
pub const GetWindowCreateContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief GetWindowContextcookie
pub const GetWindowContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetWindowContextRequest
pub const GetWindowContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetWindowContextReply
pub const GetWindowContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief ListItem
pub const ListItem = struct {
    @"name": xcb.ATOM,
    @"object_context_len": u32,
    @"data_context_len": u32,
    @"object_context": []u8,
    @"data_context": []u8,
};

/// @brief SetPropertyCreateContextRequest
pub const SetPropertyCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"context_len": u32,
    @"context": []const u8,
};

/// @brief GetPropertyCreateContextcookie
pub const GetPropertyCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyCreateContextRequest
pub const GetPropertyCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
};

/// @brief GetPropertyCreateContextReply
pub const GetPropertyCreateContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief SetPropertyUseContextRequest
pub const SetPropertyUseContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"context_len": u32,
    @"context": []const u8,
};

/// @brief GetPropertyUseContextcookie
pub const GetPropertyUseContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyUseContextRequest
pub const GetPropertyUseContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
};

/// @brief GetPropertyUseContextReply
pub const GetPropertyUseContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief GetPropertyContextcookie
pub const GetPropertyContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyContextRequest
pub const GetPropertyContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"property": xcb.ATOM,
};

/// @brief GetPropertyContextReply
pub const GetPropertyContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief GetPropertyDataContextcookie
pub const GetPropertyDataContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyDataContextRequest
pub const GetPropertyDataContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"property": xcb.ATOM,
};

/// @brief GetPropertyDataContextReply
pub const GetPropertyDataContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief ListPropertiescookie
pub const ListPropertiescookie = struct {
    sequence: c_uint,
};

/// @brief ListPropertiesRequest
pub const ListPropertiesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief ListPropertiesReply
pub const ListPropertiesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"properties_len": u32,
    @"pad1": [20]u8,
    @"properties": []xcb.selinux.ListItem,
};

/// @brief SetSelectionCreateContextRequest
pub const SetSelectionCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"context_len": u32,
    @"context": []const u8,
};

/// @brief GetSelectionCreateContextcookie
pub const GetSelectionCreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionCreateContextRequest
pub const GetSelectionCreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
};

/// @brief GetSelectionCreateContextReply
pub const GetSelectionCreateContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief SetSelectionUseContextRequest
pub const SetSelectionUseContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"context_len": u32,
    @"context": []const u8,
};

/// @brief GetSelectionUseContextcookie
pub const GetSelectionUseContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionUseContextRequest
pub const GetSelectionUseContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
};

/// @brief GetSelectionUseContextReply
pub const GetSelectionUseContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief GetSelectionContextcookie
pub const GetSelectionContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionContextRequest
pub const GetSelectionContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"selection": xcb.ATOM,
};

/// @brief GetSelectionContextReply
pub const GetSelectionContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief GetSelectionDataContextcookie
pub const GetSelectionDataContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionDataContextRequest
pub const GetSelectionDataContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"selection": xcb.ATOM,
};

/// @brief GetSelectionDataContextReply
pub const GetSelectionDataContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

/// @brief ListSelectionscookie
pub const ListSelectionscookie = struct {
    sequence: c_uint,
};

/// @brief ListSelectionsRequest
pub const ListSelectionsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
};

/// @brief ListSelectionsReply
pub const ListSelectionsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"selections_len": u32,
    @"pad1": [20]u8,
    @"selections": []xcb.selinux.ListItem,
};

/// @brief GetClientContextcookie
pub const GetClientContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetClientContextRequest
pub const GetClientContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"resource": u32,
};

/// @brief GetClientContextReply
pub const GetClientContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"context_len": u32,
    @"pad1": [20]u8,
    @"context": []u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
