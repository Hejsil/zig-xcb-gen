//!
//! This file generated automatically from xf86vidmode.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XFree86-VidModeExtension", .global_id = 0 };

pub const SYNCRANGE = u32;

pub const DOTCLOCK = u32;

pub const ModeFlag = extern enum(c_uint) {
    @"Positive_HSync" = 1,
    @"Negative_HSync" = 2,
    @"Positive_VSync" = 4,
    @"Negative_VSync" = 8,
    @"Interlace" = 16,
    @"Composite_Sync" = 32,
    @"Positive_CSync" = 64,
    @"Negative_CSync" = 128,
    @"HSkew" = 256,
    @"Broadcast" = 512,
    @"Pixmux" = 1024,
    @"Double_Clock" = 2048,
    @"Half_Clock" = 4096,
};

pub const ClockFlag = extern enum(c_uint) {
    @"Programable" = 1,
};

pub const Permission = extern enum(c_uint) {
    @"Read" = 1,
    @"Write" = 2,
};

/// @brief ModeInfo
pub const ModeInfo = extern struct {
    @"dotclock": xcb.xf86vidmode.DOTCLOCK,
    @"hdisplay": u16,
    @"hsyncstart": u16,
    @"hsyncend": u16,
    @"htotal": u16,
    @"hskew": u32,
    @"vdisplay": u16,
    @"vsyncstart": u16,
    @"vsyncend": u16,
    @"vtotal": u16,
    @"pad0": [4]u8,
    @"flags": u32,
    @"pad1": [12]u8,
    @"privsize": u32,
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
};

/// @brief QueryVersionReply
pub const QueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u16,
    @"minor_version": u16,
};

/// @brief GetModeLinecookie
pub const GetModeLinecookie = struct {
    sequence: c_uint,
};

/// @brief GetModeLineRequest
pub const GetModeLineRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
};

/// @brief GetModeLineReply
pub const GetModeLineReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"dotclock": xcb.xf86vidmode.DOTCLOCK,
    @"hdisplay": u16,
    @"hsyncstart": u16,
    @"hsyncend": u16,
    @"htotal": u16,
    @"hskew": u16,
    @"vdisplay": u16,
    @"vsyncstart": u16,
    @"vsyncend": u16,
    @"vtotal": u16,
    @"pad1": [2]u8,
    @"flags": u32,
    @"pad2": [12]u8,
    @"privsize": u32,
    @"private": [*]u8,
};

/// @brief ModModeLineRequest
pub const ModModeLineRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"screen": u32,
    @"hdisplay": u16,
    @"hsyncstart": u16,
    @"hsyncend": u16,
    @"htotal": u16,
    @"hskew": u16,
    @"vdisplay": u16,
    @"vsyncstart": u16,
    @"vsyncend": u16,
    @"vtotal": u16,
    @"pad0": [2]u8,
    @"flags": u32,
    @"pad1": [12]u8,
    @"privsize": u32,
    @"private": [*]u8,
};

/// @brief SwitchModeRequest
pub const SwitchModeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"screen": u16,
    @"zoom": u16,
};

/// @brief GetMonitorcookie
pub const GetMonitorcookie = struct {
    sequence: c_uint,
};

/// @brief GetMonitorRequest
pub const GetMonitorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
};

/// @brief GetMonitorReply
pub const GetMonitorReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"vendor_length": u8,
    @"model_length": u8,
    @"num_hsync": u8,
    @"num_vsync": u8,
    @"pad1": [20]u8,
    @"hsync": [*]xcb.xf86vidmode.SYNCRANGE,
    @"vsync": [*]xcb.xf86vidmode.SYNCRANGE,
    @"vendor": [*]u8,
    @"alignment_pad": [*]u8,
    @"model": [*]u8,
};

/// @brief LockModeSwitchRequest
pub const LockModeSwitchRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"screen": u16,
    @"lock": u16,
};

/// @brief GetAllModeLinescookie
pub const GetAllModeLinescookie = struct {
    sequence: c_uint,
};

/// @brief GetAllModeLinesRequest
pub const GetAllModeLinesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
};

/// @brief GetAllModeLinesReply
pub const GetAllModeLinesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"modecount": u32,
    @"pad1": [20]u8,
    @"modeinfo": [*]xcb.xf86vidmode.ModeInfo,
};

/// @brief AddModeLineRequest
pub const AddModeLineRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"screen": u32,
    @"dotclock": xcb.xf86vidmode.DOTCLOCK,
    @"hdisplay": u16,
    @"hsyncstart": u16,
    @"hsyncend": u16,
    @"htotal": u16,
    @"hskew": u16,
    @"vdisplay": u16,
    @"vsyncstart": u16,
    @"vsyncend": u16,
    @"vtotal": u16,
    @"pad0": [2]u8,
    @"flags": u32,
    @"pad1": [12]u8,
    @"privsize": u32,
    @"after_dotclock": xcb.xf86vidmode.DOTCLOCK,
    @"after_hdisplay": u16,
    @"after_hsyncstart": u16,
    @"after_hsyncend": u16,
    @"after_htotal": u16,
    @"after_hskew": u16,
    @"after_vdisplay": u16,
    @"after_vsyncstart": u16,
    @"after_vsyncend": u16,
    @"after_vtotal": u16,
    @"pad2": [2]u8,
    @"after_flags": u32,
    @"pad3": [12]u8,
    @"private": [*]u8,
};

/// @brief DeleteModeLineRequest
pub const DeleteModeLineRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"screen": u32,
    @"dotclock": xcb.xf86vidmode.DOTCLOCK,
    @"hdisplay": u16,
    @"hsyncstart": u16,
    @"hsyncend": u16,
    @"htotal": u16,
    @"hskew": u16,
    @"vdisplay": u16,
    @"vsyncstart": u16,
    @"vsyncend": u16,
    @"vtotal": u16,
    @"pad0": [2]u8,
    @"flags": u32,
    @"pad1": [12]u8,
    @"privsize": u32,
    @"private": [*]u8,
};

/// @brief ValidateModeLinecookie
pub const ValidateModeLinecookie = struct {
    sequence: c_uint,
};

/// @brief ValidateModeLineRequest
pub const ValidateModeLineRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"screen": u32,
    @"dotclock": xcb.xf86vidmode.DOTCLOCK,
    @"hdisplay": u16,
    @"hsyncstart": u16,
    @"hsyncend": u16,
    @"htotal": u16,
    @"hskew": u16,
    @"vdisplay": u16,
    @"vsyncstart": u16,
    @"vsyncend": u16,
    @"vtotal": u16,
    @"pad0": [2]u8,
    @"flags": u32,
    @"pad1": [12]u8,
    @"privsize": u32,
    @"private": [*]u8,
};

/// @brief ValidateModeLineReply
pub const ValidateModeLineReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u32,
    @"pad1": [20]u8,
};

/// @brief SwitchToModeRequest
pub const SwitchToModeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"screen": u32,
    @"dotclock": xcb.xf86vidmode.DOTCLOCK,
    @"hdisplay": u16,
    @"hsyncstart": u16,
    @"hsyncend": u16,
    @"htotal": u16,
    @"hskew": u16,
    @"vdisplay": u16,
    @"vsyncstart": u16,
    @"vsyncend": u16,
    @"vtotal": u16,
    @"pad0": [2]u8,
    @"flags": u32,
    @"pad1": [12]u8,
    @"privsize": u32,
    @"private": [*]u8,
};

/// @brief GetViewPortcookie
pub const GetViewPortcookie = struct {
    sequence: c_uint,
};

/// @brief GetViewPortRequest
pub const GetViewPortRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
};

/// @brief GetViewPortReply
pub const GetViewPortReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"x": u32,
    @"y": u32,
    @"pad1": [16]u8,
};

/// @brief SetViewPortRequest
pub const SetViewPortRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
    @"x": u32,
    @"y": u32,
};

/// @brief GetDotClockscookie
pub const GetDotClockscookie = struct {
    sequence: c_uint,
};

/// @brief GetDotClocksRequest
pub const GetDotClocksRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
};

/// @brief GetDotClocksReply
pub const GetDotClocksReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"flags": u32,
    @"clocks": u32,
    @"maxclocks": u32,
    @"pad1": [12]u8,
    @"clock": [*]u32,
};

/// @brief SetClientVersionRequest
pub const SetClientVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"major": u16,
    @"minor": u16,
};

/// @brief SetGammaRequest
pub const SetGammaRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
    @"red": u32,
    @"green": u32,
    @"blue": u32,
    @"pad1": [12]u8,
};

/// @brief GetGammacookie
pub const GetGammacookie = struct {
    sequence: c_uint,
};

/// @brief GetGammaRequest
pub const GetGammaRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"screen": u16,
    @"pad0": [26]u8,
};

/// @brief GetGammaReply
pub const GetGammaReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"red": u32,
    @"green": u32,
    @"blue": u32,
    @"pad1": [12]u8,
};

/// @brief GetGammaRampcookie
pub const GetGammaRampcookie = struct {
    sequence: c_uint,
};

/// @brief GetGammaRampRequest
pub const GetGammaRampRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"screen": u16,
    @"size": u16,
};

/// @brief GetGammaRampReply
pub const GetGammaRampReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"size": u16,
    @"pad1": [22]u8,
    @"red": [*]u16,
    @"green": [*]u16,
    @"blue": [*]u16,
};

/// @brief SetGammaRampRequest
pub const SetGammaRampRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"screen": u16,
    @"size": u16,
    @"red": [*]u16,
    @"green": [*]u16,
    @"blue": [*]u16,
};

/// @brief GetGammaRampSizecookie
pub const GetGammaRampSizecookie = struct {
    sequence: c_uint,
};

/// @brief GetGammaRampSizeRequest
pub const GetGammaRampSizeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
};

/// @brief GetGammaRampSizeReply
pub const GetGammaRampSizeReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"size": u16,
    @"pad1": [22]u8,
};

/// @brief GetPermissionscookie
pub const GetPermissionscookie = struct {
    sequence: c_uint,
};

/// @brief GetPermissionsRequest
pub const GetPermissionsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"screen": u16,
    @"pad0": [2]u8,
};

/// @brief GetPermissionsReply
pub const GetPermissionsReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"permissions": u32,
    @"pad1": [20]u8,
};

/// Opcode for BadClock.
pub const BadClockOpcode = 0;

/// @brief BadClockError
pub const BadClockError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadHTimings.
pub const BadHTimingsOpcode = 1;

/// @brief BadHTimingsError
pub const BadHTimingsError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadVTimings.
pub const BadVTimingsOpcode = 2;

/// @brief BadVTimingsError
pub const BadVTimingsError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for ModeUnsuitable.
pub const ModeUnsuitableOpcode = 3;

/// @brief ModeUnsuitableError
pub const ModeUnsuitableError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for ExtensionDisabled.
pub const ExtensionDisabledOpcode = 4;

/// @brief ExtensionDisabledError
pub const ExtensionDisabledError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for ClientNotLocal.
pub const ClientNotLocalOpcode = 5;

/// @brief ClientNotLocalError
pub const ClientNotLocalError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for ZoomLocked.
pub const ZoomLockedOpcode = 6;

/// @brief ZoomLockedError
pub const ZoomLockedError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
