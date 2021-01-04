//!
//! This file generated automatically from res.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "X-Resource", .global_id = 0 };

/// @brief Client
pub const Client = struct {
    @"resource_base": u32,
    @"resource_mask": u32,
};

/// @brief Type
pub const Type = struct {
    @"resource_type": xcb.ATOM,
    @"count": u32,
};

pub const ClientIdMask = extern enum(c_uint) {
    @"ClientXID" = 1,
    @"LocalClientPID" = 2,
};

/// @brief ClientIdSpec
pub const ClientIdSpec = struct {
    @"client": u32,
    @"mask": u32,
};

/// @brief ClientIdValue
pub const ClientIdValue = struct {
    @"spec": xcb.res.ClientIdSpec,
    @"length": u32,
    @"value": []u32,
};

/// @brief ResourceIdSpec
pub const ResourceIdSpec = struct {
    @"resource": u32,
    @"type": u32,
};

/// @brief ResourceSizeSpec
pub const ResourceSizeSpec = struct {
    @"spec": xcb.res.ResourceIdSpec,
    @"bytes": u32,
    @"ref_count": u32,
    @"use_count": u32,
};

/// @brief ResourceSizeValue
pub const ResourceSizeValue = struct {
    @"size": xcb.res.ResourceSizeSpec,
    @"num_cross_references": u32,
    @"cross_references": []xcb.res.ResourceSizeSpec,
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

/// @brief QueryClientscookie
pub const QueryClientscookie = struct {
    sequence: c_uint,
};

/// @brief QueryClientsRequest
pub const QueryClientsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
};

/// @brief QueryClientsReply
pub const QueryClientsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_clients": u32,
    @"pad1": [20]u8,
    @"clients": []xcb.res.Client,
};

/// @brief QueryClientResourcescookie
pub const QueryClientResourcescookie = struct {
    sequence: c_uint,
};

/// @brief QueryClientResourcesRequest
pub const QueryClientResourcesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"xid": u32,
};

/// @brief QueryClientResourcesReply
pub const QueryClientResourcesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_types": u32,
    @"pad1": [20]u8,
    @"types": []xcb.res.Type,
};

/// @brief QueryClientPixmapBytescookie
pub const QueryClientPixmapBytescookie = struct {
    sequence: c_uint,
};

/// @brief QueryClientPixmapBytesRequest
pub const QueryClientPixmapBytesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"xid": u32,
};

/// @brief QueryClientPixmapBytesReply
pub const QueryClientPixmapBytesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"bytes": u32,
    @"bytes_overflow": u32,
};

/// @brief QueryClientIdscookie
pub const QueryClientIdscookie = struct {
    sequence: c_uint,
};

/// @brief QueryClientIdsRequest
pub const QueryClientIdsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"num_specs": u32,
    @"specs": []const xcb.res.ClientIdSpec,
};

/// @brief QueryClientIdsReply
pub const QueryClientIdsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_ids": u32,
    @"pad1": [20]u8,
    @"ids": []xcb.res.ClientIdValue,
};

/// @brief QueryResourceBytescookie
pub const QueryResourceBytescookie = struct {
    sequence: c_uint,
};

/// @brief QueryResourceBytesRequest
pub const QueryResourceBytesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"client": u32,
    @"num_specs": u32,
    @"specs": []const xcb.res.ResourceIdSpec,
};

/// @brief QueryResourceBytesReply
pub const QueryResourceBytesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_sizes": u32,
    @"pad1": [20]u8,
    @"sizes": []xcb.res.ResourceSizeValue,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
