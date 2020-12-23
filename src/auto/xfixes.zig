//!
//! This file generated automatically from xfixes.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XFIXES", .global_id = 0 };

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"client_major_version": u32,
    @"client_minor_version": u32,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u32,
    @"minor_version": u32,
    @"pad1": [16]u8,
};

pub const SaveSetMode = extern enum(c_uint) {
    @"Insert" = 0,
    @"Delete" = 1,
};

pub const SaveSetTarget = extern enum(c_uint) {
    @"Nearest" = 0,
    @"Root" = 1,
};

pub const SaveSetMapping = extern enum(c_uint) {
    @"Map" = 0,
    @"Unmap" = 1,
};

/// @brief ChangeSaveSetRequest
pub const ChangeSaveSetRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"mode": u8,
    @"target": u8,
    @"map": u8,
    @"pad0": u8,
    @"window": xcb.WINDOW,
};

pub const SelectionEvent = extern enum(c_uint) {
    @"SetSelectionOwner" = 0,
    @"SelectionWindowDestroy" = 1,
    @"SelectionClientClose" = 2,
};

pub const SelectionEventMask = extern enum(c_uint) {
    @"SetSelectionOwner" = 1,
    @"SelectionWindowDestroy" = 2,
    @"SelectionClientClose" = 4,
};

/// Opcode for SelectionNotify.
pub const SelectionNotifyOpcode = 0;

/// @brief SelectionNotifyEvent
pub const SelectionNotifyEvent = extern struct {
    @"response_type": u8,
    @"subtype": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"owner": xcb.WINDOW,
    @"selection": xcb.ATOM,
    @"timestamp": xcb.TIMESTAMP,
    @"selection_timestamp": xcb.TIMESTAMP,
    @"pad0": [8]u8,
};

/// @brief SelectSelectionInputRequest
pub const SelectSelectionInputRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"selection": xcb.ATOM,
    @"event_mask": u32,
};

pub const CursorNotify = extern enum(c_uint) {
    @"DisplayCursor" = 0,
};

pub const CursorNotifyMask = extern enum(c_uint) {
    @"DisplayCursor" = 1,
};

/// Opcode for CursorNotify.
pub const CursorNotifyOpcode = 1;

/// @brief CursorNotifyEvent
pub const CursorNotifyEvent = extern struct {
    @"response_type": u8,
    @"subtype": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"cursor_serial": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"name": xcb.ATOM,
    @"pad0": [12]u8,
};

/// @brief SelectCursorInputRequest
pub const SelectCursorInputRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"event_mask": u32,
};

/// @brief GetCursorImagecookie
pub const GetCursorImagecookie = struct {
    sequence: c_uint,
};

/// @brief GetCursorImageRequest
pub const GetCursorImageRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
};

/// @brief GetCursorImageReply
pub const GetCursorImageReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"xhot": u16,
    @"yhot": u16,
    @"cursor_serial": u32,
    @"pad1": [8]u8,
    @"cursor_image": [*]u32,
};

pub const REGION = u32;

/// Opcode for BadRegion.
pub const BadRegionOpcode = 0;

/// @brief BadRegionError
pub const BadRegionError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

pub const Region = extern enum(c_uint) {
    @"None" = 0,
};

/// @brief CreateRegionRequest
pub const CreateRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"rectangles": [*]xcb.RECTANGLE,
};

/// @brief CreateRegionFromBitmapRequest
pub const CreateRegionFromBitmapRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"bitmap": xcb.PIXMAP,
};

/// @brief CreateRegionFromWindowRequest
pub const CreateRegionFromWindowRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"window": xcb.WINDOW,
    @"kind": xcb.shape.KIND,
    @"pad0": [3]u8,
};

/// @brief CreateRegionFromGCRequest
pub const CreateRegionFromGCRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"gc": xcb.GCONTEXT,
};

/// @brief CreateRegionFromPictureRequest
pub const CreateRegionFromPictureRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"picture": xcb.render.PICTURE,
};

/// @brief DestroyRegionRequest
pub const DestroyRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
};

/// @brief SetRegionRequest
pub const SetRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"rectangles": [*]xcb.RECTANGLE,
};

/// @brief CopyRegionRequest
pub const CopyRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"source": xcb.xfixes.REGION,
    @"destination": xcb.xfixes.REGION,
};

/// @brief UnionRegionRequest
pub const UnionRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"source1": xcb.xfixes.REGION,
    @"source2": xcb.xfixes.REGION,
    @"destination": xcb.xfixes.REGION,
};

/// @brief IntersectRegionRequest
pub const IntersectRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"source1": xcb.xfixes.REGION,
    @"source2": xcb.xfixes.REGION,
    @"destination": xcb.xfixes.REGION,
};

/// @brief SubtractRegionRequest
pub const SubtractRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"source1": xcb.xfixes.REGION,
    @"source2": xcb.xfixes.REGION,
    @"destination": xcb.xfixes.REGION,
};

/// @brief InvertRegionRequest
pub const InvertRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"source": xcb.xfixes.REGION,
    @"bounds": xcb.RECTANGLE,
    @"destination": xcb.xfixes.REGION,
};

/// @brief TranslateRegionRequest
pub const TranslateRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
    @"dx": i16,
    @"dy": i16,
};

/// @brief RegionExtentsRequest
pub const RegionExtentsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"source": xcb.xfixes.REGION,
    @"destination": xcb.xfixes.REGION,
};

/// @brief FetchRegioncookie
pub const FetchRegioncookie = struct {
    sequence: c_uint,
};

/// @brief FetchRegionRequest
pub const FetchRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"region": xcb.xfixes.REGION,
};

/// @brief FetchRegionReply
pub const FetchRegionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"extents": xcb.RECTANGLE,
    @"pad1": [16]u8,
    @"rectangles": [*]xcb.RECTANGLE,
};

/// @brief SetGCClipRegionRequest
pub const SetGCClipRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"gc": xcb.GCONTEXT,
    @"region": xcb.xfixes.REGION,
    @"x_origin": i16,
    @"y_origin": i16,
};

/// @brief SetWindowShapeRegionRequest
pub const SetWindowShapeRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
    @"dest": xcb.WINDOW,
    @"dest_kind": xcb.shape.KIND,
    @"pad0": [3]u8,
    @"x_offset": i16,
    @"y_offset": i16,
    @"region": xcb.xfixes.REGION,
};

/// @brief SetPictureClipRegionRequest
pub const SetPictureClipRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"picture": xcb.render.PICTURE,
    @"region": xcb.xfixes.REGION,
    @"x_origin": i16,
    @"y_origin": i16,
};

/// @brief SetCursorNameRequest
pub const SetCursorNameRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 23,
    @"length": u16,
    @"cursor": xcb.CURSOR,
    @"nbytes": u16,
    @"pad0": [2]u8,
    @"name": [*]u8,
};

/// @brief GetCursorNamecookie
pub const GetCursorNamecookie = struct {
    sequence: c_uint,
};

/// @brief GetCursorNameRequest
pub const GetCursorNameRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 24,
    @"length": u16,
    @"cursor": xcb.CURSOR,
};

/// @brief GetCursorNameReply
pub const GetCursorNameReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"atom": xcb.ATOM,
    @"nbytes": u16,
    @"pad1": [18]u8,
    @"name": [*]u8,
};

/// @brief GetCursorImageAndNamecookie
pub const GetCursorImageAndNamecookie = struct {
    sequence: c_uint,
};

/// @brief GetCursorImageAndNameRequest
pub const GetCursorImageAndNameRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 25,
    @"length": u16,
};

/// @brief GetCursorImageAndNameReply
pub const GetCursorImageAndNameReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"xhot": u16,
    @"yhot": u16,
    @"cursor_serial": u32,
    @"cursor_atom": xcb.ATOM,
    @"nbytes": u16,
    @"pad1": [2]u8,
    @"cursor_image": [*]u32,
    @"name": [*]u8,
};

/// @brief ChangeCursorRequest
pub const ChangeCursorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 26,
    @"length": u16,
    @"source": xcb.CURSOR,
    @"destination": xcb.CURSOR,
};

/// @brief ChangeCursorByNameRequest
pub const ChangeCursorByNameRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 27,
    @"length": u16,
    @"src": xcb.CURSOR,
    @"nbytes": u16,
    @"pad0": [2]u8,
    @"name": [*]u8,
};

/// @brief ExpandRegionRequest
pub const ExpandRegionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 28,
    @"length": u16,
    @"source": xcb.xfixes.REGION,
    @"destination": xcb.xfixes.REGION,
    @"left": u16,
    @"right": u16,
    @"top": u16,
    @"bottom": u16,
};

/// @brief HideCursorRequest
pub const HideCursorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 29,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief ShowCursorRequest
pub const ShowCursorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 30,
    @"length": u16,
    @"window": xcb.WINDOW,
};

pub const BARRIER = u32;

pub const BarrierDirections = extern enum(c_uint) {
    @"PositiveX" = 1,
    @"PositiveY" = 2,
    @"NegativeX" = 4,
    @"NegativeY" = 8,
};

/// @brief CreatePointerBarrierRequest
pub const CreatePointerBarrierRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 31,
    @"length": u16,
    @"barrier": xcb.xfixes.BARRIER,
    @"window": xcb.WINDOW,
    @"x1": u16,
    @"y1": u16,
    @"x2": u16,
    @"y2": u16,
    @"directions": u32,
    @"pad0": [2]u8,
    @"num_devices": u16,
    @"devices": [*]u16,
};

/// @brief DeletePointerBarrierRequest
pub const DeletePointerBarrierRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 32,
    @"length": u16,
    @"barrier": xcb.xfixes.BARRIER,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
