//!
//! This file generated automatically from xvmc.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XVideo-MotionCompensation", .global_id = 0 };

pub const CONTEXT = u32;

pub const SURFACE = u32;

pub const SUBPICTURE = u32;

/// @brief SurfaceInfo
pub const SurfaceInfo = struct {
    @"id": xcb.xvmc.SURFACE,
    @"chroma_format": u16,
    @"pad0": u16,
    @"max_width": u16,
    @"max_height": u16,
    @"subpicture_max_width": u16,
    @"subpicture_max_height": u16,
    @"mc_type": u32,
    @"flags": u32,
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
};

/// @brief QueryVersionReply
pub const QueryVersionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major": u32,
    @"minor": u32,
};

/// @brief ListSurfaceTypescookie
pub const ListSurfaceTypescookie = struct {
    sequence: c_uint,
};

/// @brief ListSurfaceTypesRequest
pub const ListSurfaceTypesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"port_id": xcb.xv.PORT,
};

/// @brief ListSurfaceTypesReply
pub const ListSurfaceTypesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num": u32,
    @"pad1": [20]u8,
    @"surfaces": []xcb.xvmc.SurfaceInfo,
};

/// @brief CreateContextcookie
pub const CreateContextcookie = struct {
    sequence: c_uint,
};

/// @brief CreateContextRequest
pub const CreateContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"context_id": xcb.xvmc.CONTEXT,
    @"port_id": xcb.xv.PORT,
    @"surface_id": xcb.xvmc.SURFACE,
    @"width": u16,
    @"height": u16,
    @"flags": u32,
};

/// @brief CreateContextReply
pub const CreateContextReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"width_actual": u16,
    @"height_actual": u16,
    @"flags_return": u32,
    @"pad1": [20]u8,
    @"priv_data": []u32,
};

/// @brief DestroyContextRequest
pub const DestroyContextRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"context_id": xcb.xvmc.CONTEXT,
};

/// @brief CreateSurfacecookie
pub const CreateSurfacecookie = struct {
    sequence: c_uint,
};

/// @brief CreateSurfaceRequest
pub const CreateSurfaceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"surface_id": xcb.xvmc.SURFACE,
    @"context_id": xcb.xvmc.CONTEXT,
};

/// @brief CreateSurfaceReply
pub const CreateSurfaceReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad1": [24]u8,
    @"priv_data": []u32,
};

/// @brief DestroySurfaceRequest
pub const DestroySurfaceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"surface_id": xcb.xvmc.SURFACE,
};

/// @brief CreateSubpicturecookie
pub const CreateSubpicturecookie = struct {
    sequence: c_uint,
};

/// @brief CreateSubpictureRequest
pub const CreateSubpictureRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"subpicture_id": xcb.xvmc.SUBPICTURE,
    @"context": xcb.xvmc.CONTEXT,
    @"xvimage_id": u32,
    @"width": u16,
    @"height": u16,
};

/// @brief CreateSubpictureReply
pub const CreateSubpictureReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"width_actual": u16,
    @"height_actual": u16,
    @"num_palette_entries": u16,
    @"entry_bytes": u16,
    @"component_order": [4]u8,
    @"pad1": [12]u8,
    @"priv_data": []u32,
};

/// @brief DestroySubpictureRequest
pub const DestroySubpictureRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"subpicture_id": xcb.xvmc.SUBPICTURE,
};

/// @brief ListSubpictureTypescookie
pub const ListSubpictureTypescookie = struct {
    sequence: c_uint,
};

/// @brief ListSubpictureTypesRequest
pub const ListSubpictureTypesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"port_id": xcb.xv.PORT,
    @"surface_id": xcb.xvmc.SURFACE,
};

/// @brief ListSubpictureTypesReply
pub const ListSubpictureTypesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num": u32,
    @"pad1": [20]u8,
    @"types": []xcb.xv.ImageFormatInfo,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
