//!
//! This file generated automatically from record.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "RECORD", .global_id = 0 };

pub const CONTEXT = u32;

/// @brief Range8
pub const Range8 = struct {
    @"first": u8,
    @"last": u8,
};

/// @brief Range16
pub const Range16 = struct {
    @"first": u16,
    @"last": u16,
};

/// @brief ExtRange
pub const ExtRange = struct {
    @"major": xcb.record.Range8,
    @"minor": xcb.record.Range16,
};

/// @brief Range
pub const Range = struct {
    @"core_requests": xcb.record.Range8,
    @"core_replies": xcb.record.Range8,
    @"ext_requests": xcb.record.ExtRange,
    @"ext_replies": xcb.record.ExtRange,
    @"delivered_events": xcb.record.Range8,
    @"device_events": xcb.record.Range8,
    @"errors": xcb.record.Range8,
    @"client_started": u8,
    @"client_died": u8,
};

pub const ElementHeader = u8;

pub const HType = extern enum(c_uint) {
    @"FromServerTime" = 1,
    @"FromClientTime" = 2,
    @"FromClientSequence" = 4,
};

pub const ClientSpec = u32;

pub const CS = extern enum(c_uint) {
    @"CurrentClients" = 1,
    @"FutureClients" = 2,
    @"AllClients" = 3,
};

/// @brief ClientInfo
pub const ClientInfo = struct {
    @"client_resource": xcb.record.ClientSpec,
    @"num_ranges": u32,
    @"ranges": []xcb.record.Range,
};

/// Opcode for BadContext.
pub const BadContextOpcode = 0;

/// @brief BadContextError
pub const BadContextError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
    @"invalid_record": u32,
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
    @"major_version": u16,
    @"minor_version": u16,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u16,
    @"minor_version": u16,
};

/// @brief CreateContextRequest
pub const CreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"context": xcb.record.CONTEXT,
    @"element_header": xcb.record.ElementHeader,
    @"pad0": [3]u8,
    @"num_client_specs": u32,
    @"num_ranges": u32,
    @"client_specs": []const xcb.record.ClientSpec,
    @"ranges": []const xcb.record.Range,
};

/// @brief RegisterClientsRequest
pub const RegisterClientsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"context": xcb.record.CONTEXT,
    @"element_header": xcb.record.ElementHeader,
    @"pad0": [3]u8,
    @"num_client_specs": u32,
    @"num_ranges": u32,
    @"client_specs": []const xcb.record.ClientSpec,
    @"ranges": []const xcb.record.Range,
};

/// @brief UnregisterClientsRequest
pub const UnregisterClientsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"context": xcb.record.CONTEXT,
    @"num_client_specs": u32,
    @"client_specs": []const xcb.record.ClientSpec,
};

/// @brief GetContextcookie
pub const GetContextcookie = struct {
    sequence: c_uint,
};

/// @brief GetContextRequest
pub const GetContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"context": xcb.record.CONTEXT,
};

/// @brief GetContextReply
pub const GetContextReply = struct {
    @"response_type": u8,
    @"enabled": u8,
    @"sequence": u16,
    @"length": u32,
    @"element_header": xcb.record.ElementHeader,
    @"pad0": [3]u8,
    @"num_intercepted_clients": u32,
    @"pad1": [16]u8,
    @"intercepted_clients": []xcb.record.ClientInfo,
};

/// @brief EnableContextcookie
pub const EnableContextcookie = struct {
    sequence: c_uint,
};

/// @brief EnableContextRequest
pub const EnableContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"context": xcb.record.CONTEXT,
};

/// @brief EnableContextReply
pub const EnableContextReply = struct {
    @"response_type": u8,
    @"category": u8,
    @"sequence": u16,
    @"length": u32,
    @"element_header": xcb.record.ElementHeader,
    @"client_swapped": u8,
    @"pad0": [2]u8,
    @"xid_base": u32,
    @"server_time": u32,
    @"rec_sequence_num": u32,
    @"pad1": [8]u8,
    @"data": []u8,
};

/// @brief DisableContextRequest
pub const DisableContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"context": xcb.record.CONTEXT,
};

/// @brief FreeContextRequest
pub const FreeContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"context": xcb.record.CONTEXT,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
