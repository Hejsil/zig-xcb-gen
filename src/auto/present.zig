//!
//! This file generated automatically from present.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "Present", .global_id = 0 };

pub const Event = extern enum(c_uint) {
    @"ConfigureNotify" = 0,
    @"CompleteNotify" = 1,
    @"IdleNotify" = 2,
    @"RedirectNotify" = 3,
};

pub const EventMask = extern enum(c_uint) {
    @"NoEvent" = 0,
    @"ConfigureNotify" = 1,
    @"CompleteNotify" = 2,
    @"IdleNotify" = 4,
    @"RedirectNotify" = 8,
};

pub const Option = extern enum(c_uint) {
    @"None" = 0,
    @"Async" = 1,
    @"Copy" = 2,
    @"UST" = 4,
};

pub const Capability = extern enum(c_uint) {
    @"None" = 0,
    @"Async" = 1,
    @"Fence" = 2,
    @"UST" = 4,
};

pub const CompleteKind = extern enum(c_uint) {
    @"Pixmap" = 0,
    @"NotifyMSC" = 1,
};

pub const CompleteMode = extern enum(c_uint) {
    @"Copy" = 0,
    @"Flip" = 1,
    @"Skip" = 2,
};

/// @brief Notify
pub const Notify = extern struct {
    @"window": xcb.WINDOW,
    @"serial": u32,
};

/// @brief QueryVersioncookie
pub const QueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryVersionRequest
pub const QueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"major_version": u32,
    @"minor_version": u32,
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u32,
    @"minor_version": u32,
};

/// @brief PixmapRequest
pub const PixmapRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"pixmap": xcb.PIXMAP,
    @"serial": u32,
    @"valid": xcb.xfixes.REGION,
    @"update": xcb.xfixes.REGION,
    @"x_off": i16,
    @"y_off": i16,
    @"target_crtc": xcb.randr.CRTC,
    @"wait_fence": xcb.sync.FENCE,
    @"idle_fence": xcb.sync.FENCE,
    @"options": u32,
    @"pad0": [4]u8,
    @"target_msc": u64,
    @"divisor": u64,
    @"remainder": u64,
    @"notifies": [*]xcb.present.Notify,
};

/// @brief NotifyMSCRequest
pub const NotifyMSCRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"serial": u32,
    @"pad0": [4]u8,
    @"target_msc": u64,
    @"divisor": u64,
    @"remainder": u64,
};

pub const EVENT = u32;

/// @brief SelectInputRequest
pub const SelectInputRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"eid": xcb.present.EVENT,
    @"window": xcb.WINDOW,
    @"event_mask": u32,
};

/// @brief QueryCapabilitiescookie
pub const QueryCapabilitiescookie = struct {
    sequence: c_uint,
};

/// @brief QueryCapabilitiesRequest
pub const QueryCapabilitiesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"target": u32,
};

/// @brief QueryCapabilitiesReply
pub const QueryCapabilitiesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"capabilities": u32,
};

/// Opcode for Generic.
pub const GenericOpcode = 0;

/// @brief GenericEvent
pub const GenericEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"evtype": u16,
    @"pad0": [2]u8,
    @"event": xcb.present.EVENT,
};

/// Opcode for ConfigureNotify.
pub const ConfigureNotifyOpcode = 0;

/// @brief ConfigureNotifyEvent
pub const ConfigureNotifyEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"pad0": [2]u8,
    @"event": xcb.present.EVENT,
    @"window": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"off_x": i16,
    @"off_y": i16,
    @"full_sequence": u32,
    @"pixmap_width": u16,
    @"pixmap_height": u16,
    @"pixmap_flags": u32,
};

/// Opcode for CompleteNotify.
pub const CompleteNotifyOpcode = 1;

/// @brief CompleteNotifyEvent
pub const CompleteNotifyEvent = packed struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"kind": u8,
    @"mode": u8,
    @"event": xcb.present.EVENT,
    @"window": xcb.WINDOW,
    @"serial": u32,
    @"ust": u64,
    @"full_sequence": u32,
    @"msc": u64,
};

/// Opcode for IdleNotify.
pub const IdleNotifyOpcode = 2;

/// @brief IdleNotifyEvent
pub const IdleNotifyEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"pad0": [2]u8,
    @"event": xcb.present.EVENT,
    @"window": xcb.WINDOW,
    @"serial": u32,
    @"pixmap": xcb.PIXMAP,
    @"idle_fence": xcb.sync.FENCE,
    @"full_sequence": u32,
};

/// Opcode for RedirectNotify.
pub const RedirectNotifyOpcode = 3;

/// @brief RedirectNotifyEvent
pub const RedirectNotifyEvent = packed struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"update_window": u8,
    @"pad0": u8,
    @"event": xcb.present.EVENT,
    @"event_window": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"pixmap": xcb.PIXMAP,
    @"serial": u32,
    @"full_sequence": u32,
    @"valid_region": xcb.xfixes.REGION,
    @"update_region": xcb.xfixes.REGION,
    @"valid_rect": xcb.RECTANGLE,
    @"update_rect": xcb.RECTANGLE,
    @"x_off": i16,
    @"y_off": i16,
    @"target_crtc": xcb.randr.CRTC,
    @"wait_fence": xcb.sync.FENCE,
    @"idle_fence": xcb.sync.FENCE,
    @"options": u32,
    @"pad1": [4]u8,
    @"target_msc": u64,
    @"divisor": u64,
    @"remainder": u64,
    @"notifies": [*]xcb.present.Notify,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
