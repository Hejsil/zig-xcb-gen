//!
//! This file generated automatically from randr.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "RANDR", .global_id = 0 };

pub const MODE = u32;

pub const CRTC = u32;

pub const OUTPUT = u32;

pub const PROVIDER = u32;

/// Opcode for BadOutput.
pub const BadOutputOpcode = 0;

/// @brief BadOutputError
pub const BadOutputError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadCrtc.
pub const BadCrtcOpcode = 1;

/// @brief BadCrtcError
pub const BadCrtcError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadMode.
pub const BadModeOpcode = 2;

/// @brief BadModeError
pub const BadModeError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for BadProvider.
pub const BadProviderOpcode = 3;

/// @brief BadProviderError
pub const BadProviderError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

pub const Rotation = extern enum(c_uint) {
    @"Rotate_0" = 1,
    @"Rotate_90" = 2,
    @"Rotate_180" = 4,
    @"Rotate_270" = 8,
    @"Reflect_X" = 16,
    @"Reflect_Y" = 32,
};

/// @brief ScreenSize
pub const ScreenSize = extern struct {
    @"width": u16,
    @"height": u16,
    @"mwidth": u16,
    @"mheight": u16,
};

/// @brief RefreshRates
pub const RefreshRates = extern struct {
    @"nRates": u16,
    @"rates": [*]u16,
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
    @"pad1": [16]u8,
};

pub const SetConfig = extern enum(c_uint) {
    @"Success" = 0,
    @"InvalidConfigTime" = 1,
    @"InvalidTime" = 2,
    @"Failed" = 3,
};

/// @brief SetScreenConfigcookie
pub const SetScreenConfigcookie = struct {
    sequence: c_uint,
};

/// @brief SetScreenConfigRequest
pub const SetScreenConfigRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"sizeID": u16,
    @"rotation": u16,
    @"rate": u16,
    @"pad0": [2]u8,
};

/// @brief SetScreenConfigReply
pub const SetScreenConfigReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"new_timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"root": xcb.WINDOW,
    @"subpixel_order": u16,
    @"pad0": [10]u8,
};

pub const NotifyMask = extern enum(c_uint) {
    @"ScreenChange" = 1,
    @"CrtcChange" = 2,
    @"OutputChange" = 4,
    @"OutputProperty" = 8,
    @"ProviderChange" = 16,
    @"ProviderProperty" = 32,
    @"ResourceChange" = 64,
};

/// @brief SelectInputRequest
pub const SelectInputRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"enable": u16,
    @"pad0": [2]u8,
};

/// @brief GetScreenInfocookie
pub const GetScreenInfocookie = struct {
    sequence: c_uint,
};

/// @brief GetScreenInfoRequest
pub const GetScreenInfoRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetScreenInfoReply
pub const GetScreenInfoReply = extern struct {
    @"response_type": u8,
    @"rotations": u8,
    @"sequence": u16,
    @"length": u32,
    @"root": xcb.WINDOW,
    @"timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"nSizes": u16,
    @"sizeID": u16,
    @"rotation": u16,
    @"rate": u16,
    @"nInfo": u16,
    @"pad0": [2]u8,
    @"sizes": [*]xcb.randr.ScreenSize,
    @"rates": [*]xcb.randr.RefreshRates,
};

/// @brief GetScreenSizeRangecookie
pub const GetScreenSizeRangecookie = struct {
    sequence: c_uint,
};

/// @brief GetScreenSizeRangeRequest
pub const GetScreenSizeRangeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetScreenSizeRangeReply
pub const GetScreenSizeRangeReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"min_width": u16,
    @"min_height": u16,
    @"max_width": u16,
    @"max_height": u16,
    @"pad1": [16]u8,
};

/// @brief SetScreenSizeRequest
pub const SetScreenSizeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"width": u16,
    @"height": u16,
    @"mm_width": u32,
    @"mm_height": u32,
};

pub const ModeFlag = extern enum(c_uint) {
    @"HsyncPositive" = 1,
    @"HsyncNegative" = 2,
    @"VsyncPositive" = 4,
    @"VsyncNegative" = 8,
    @"Interlace" = 16,
    @"DoubleScan" = 32,
    @"Csync" = 64,
    @"CsyncPositive" = 128,
    @"CsyncNegative" = 256,
    @"HskewPresent" = 512,
    @"Bcast" = 1024,
    @"PixelMultiplex" = 2048,
    @"DoubleClock" = 4096,
    @"HalveClock" = 8192,
};

/// @brief ModeInfo
pub const ModeInfo = extern struct {
    @"id": u32,
    @"width": u16,
    @"height": u16,
    @"dot_clock": u32,
    @"hsync_start": u16,
    @"hsync_end": u16,
    @"htotal": u16,
    @"hskew": u16,
    @"vsync_start": u16,
    @"vsync_end": u16,
    @"vtotal": u16,
    @"name_len": u16,
    @"mode_flags": u32,
};

/// @brief GetScreenResourcescookie
pub const GetScreenResourcescookie = struct {
    sequence: c_uint,
};

/// @brief GetScreenResourcesRequest
pub const GetScreenResourcesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetScreenResourcesReply
pub const GetScreenResourcesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"num_crtcs": u16,
    @"num_outputs": u16,
    @"num_modes": u16,
    @"names_len": u16,
    @"pad1": [8]u8,
    @"crtcs": [*]xcb.randr.CRTC,
    @"outputs": [*]xcb.randr.OUTPUT,
    @"modes": [*]xcb.randr.ModeInfo,
    @"names": [*]u8,
};

pub const Connection = extern enum(c_uint) {
    @"Connected" = 0,
    @"Disconnected" = 1,
    @"Unknown" = 2,
};

/// @brief GetOutputInfocookie
pub const GetOutputInfocookie = struct {
    sequence: c_uint,
};

/// @brief GetOutputInfoRequest
pub const GetOutputInfoRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"config_timestamp": xcb.TIMESTAMP,
};

/// @brief GetOutputInfoReply
pub const GetOutputInfoReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"crtc": xcb.randr.CRTC,
    @"mm_width": u32,
    @"mm_height": u32,
    @"connection": u8,
    @"subpixel_order": u8,
    @"num_crtcs": u16,
    @"num_modes": u16,
    @"num_preferred": u16,
    @"num_clones": u16,
    @"name_len": u16,
    @"crtcs": [*]xcb.randr.CRTC,
    @"modes": [*]xcb.randr.MODE,
    @"clones": [*]xcb.randr.OUTPUT,
    @"name": [*]u8,
};

/// @brief ListOutputPropertiescookie
pub const ListOutputPropertiescookie = struct {
    sequence: c_uint,
};

/// @brief ListOutputPropertiesRequest
pub const ListOutputPropertiesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
};

/// @brief ListOutputPropertiesReply
pub const ListOutputPropertiesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_atoms": u16,
    @"pad1": [22]u8,
    @"atoms": [*]xcb.ATOM,
};

/// @brief QueryOutputPropertycookie
pub const QueryOutputPropertycookie = struct {
    sequence: c_uint,
};

/// @brief QueryOutputPropertyRequest
pub const QueryOutputPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"property": xcb.ATOM,
};

/// @brief QueryOutputPropertyReply
pub const QueryOutputPropertyReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pending": u8,
    @"range": u8,
    @"immutable": u8,
    @"pad1": [21]u8,
    @"validValues": [*]i32,
};

/// @brief ConfigureOutputPropertyRequest
pub const ConfigureOutputPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"property": xcb.ATOM,
    @"pending": u8,
    @"range": u8,
    @"pad0": [2]u8,
    @"values": [*]i32,
};

/// @brief ChangeOutputPropertyRequest
pub const ChangeOutputPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"format": u8,
    @"mode": u8,
    @"pad0": [2]u8,
    @"num_units": u32,
    @"data": [*]u8,
};

/// @brief DeleteOutputPropertyRequest
pub const DeleteOutputPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"property": xcb.ATOM,
};

/// @brief GetOutputPropertycookie
pub const GetOutputPropertycookie = struct {
    sequence: c_uint,
};

/// @brief GetOutputPropertyRequest
pub const GetOutputPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"long_offset": u32,
    @"long_length": u32,
    @"delete": u8,
    @"pending": u8,
    @"pad0": [2]u8,
};

/// @brief GetOutputPropertyReply
pub const GetOutputPropertyReply = extern struct {
    @"response_type": u8,
    @"format": u8,
    @"sequence": u16,
    @"length": u32,
    @"type": xcb.ATOM,
    @"bytes_after": u32,
    @"num_items": u32,
    @"pad0": [12]u8,
    @"data": [*]u8,
};

/// @brief CreateModecookie
pub const CreateModecookie = struct {
    sequence: c_uint,
};

/// @brief CreateModeRequest
pub const CreateModeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"mode_info": xcb.randr.ModeInfo,
    @"name": [*]u8,
};

/// @brief CreateModeReply
pub const CreateModeReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"mode": xcb.randr.MODE,
    @"pad1": [20]u8,
};

/// @brief DestroyModeRequest
pub const DestroyModeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"mode": xcb.randr.MODE,
};

/// @brief AddOutputModeRequest
pub const AddOutputModeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"mode": xcb.randr.MODE,
};

/// @brief DeleteOutputModeRequest
pub const DeleteOutputModeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"output": xcb.randr.OUTPUT,
    @"mode": xcb.randr.MODE,
};

/// @brief GetCrtcInfocookie
pub const GetCrtcInfocookie = struct {
    sequence: c_uint,
};

/// @brief GetCrtcInfoRequest
pub const GetCrtcInfoRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
    @"config_timestamp": xcb.TIMESTAMP,
};

/// @brief GetCrtcInfoReply
pub const GetCrtcInfoReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"mode": xcb.randr.MODE,
    @"rotation": u16,
    @"rotations": u16,
    @"num_outputs": u16,
    @"num_possible_outputs": u16,
    @"outputs": [*]xcb.randr.OUTPUT,
    @"possible": [*]xcb.randr.OUTPUT,
};

/// @brief SetCrtcConfigcookie
pub const SetCrtcConfigcookie = struct {
    sequence: c_uint,
};

/// @brief SetCrtcConfigRequest
pub const SetCrtcConfigRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
    @"timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"x": i16,
    @"y": i16,
    @"mode": xcb.randr.MODE,
    @"rotation": u16,
    @"pad0": [2]u8,
    @"outputs": [*]xcb.randr.OUTPUT,
};

/// @brief SetCrtcConfigReply
pub const SetCrtcConfigReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"pad0": [20]u8,
};

/// @brief GetCrtcGammaSizecookie
pub const GetCrtcGammaSizecookie = struct {
    sequence: c_uint,
};

/// @brief GetCrtcGammaSizeRequest
pub const GetCrtcGammaSizeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
};

/// @brief GetCrtcGammaSizeReply
pub const GetCrtcGammaSizeReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"size": u16,
    @"pad1": [22]u8,
};

/// @brief GetCrtcGammacookie
pub const GetCrtcGammacookie = struct {
    sequence: c_uint,
};

/// @brief GetCrtcGammaRequest
pub const GetCrtcGammaRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 23,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
};

/// @brief GetCrtcGammaReply
pub const GetCrtcGammaReply = extern struct {
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

/// @brief SetCrtcGammaRequest
pub const SetCrtcGammaRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 24,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
    @"size": u16,
    @"pad0": [2]u8,
    @"red": [*]u16,
    @"green": [*]u16,
    @"blue": [*]u16,
};

/// @brief GetScreenResourcesCurrentcookie
pub const GetScreenResourcesCurrentcookie = struct {
    sequence: c_uint,
};

/// @brief GetScreenResourcesCurrentRequest
pub const GetScreenResourcesCurrentRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 25,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetScreenResourcesCurrentReply
pub const GetScreenResourcesCurrentReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"num_crtcs": u16,
    @"num_outputs": u16,
    @"num_modes": u16,
    @"names_len": u16,
    @"pad1": [8]u8,
    @"crtcs": [*]xcb.randr.CRTC,
    @"outputs": [*]xcb.randr.OUTPUT,
    @"modes": [*]xcb.randr.ModeInfo,
    @"names": [*]u8,
};

pub const Transform = extern enum(c_uint) {
    @"Unit" = 1,
    @"ScaleUp" = 2,
    @"ScaleDown" = 4,
    @"Projective" = 8,
};

/// @brief SetCrtcTransformRequest
pub const SetCrtcTransformRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 26,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
    @"transform": xcb.render.TRANSFORM,
    @"filter_len": u16,
    @"pad0": [2]u8,
    @"filter_name": [*]u8,
    @"filter_params": [*]xcb.render.FIXED,
};

/// @brief GetCrtcTransformcookie
pub const GetCrtcTransformcookie = struct {
    sequence: c_uint,
};

/// @brief GetCrtcTransformRequest
pub const GetCrtcTransformRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 27,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
};

/// @brief GetCrtcTransformReply
pub const GetCrtcTransformReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pending_transform": xcb.render.TRANSFORM,
    @"has_transforms": u8,
    @"pad1": [3]u8,
    @"current_transform": xcb.render.TRANSFORM,
    @"pad2": [4]u8,
    @"pending_len": u16,
    @"pending_nparams": u16,
    @"current_len": u16,
    @"current_nparams": u16,
    @"pending_filter_name": [*]u8,
    @"pending_params": [*]xcb.render.FIXED,
    @"current_filter_name": [*]u8,
    @"current_params": [*]xcb.render.FIXED,
};

/// @brief GetPanningcookie
pub const GetPanningcookie = struct {
    sequence: c_uint,
};

/// @brief GetPanningRequest
pub const GetPanningRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 28,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
};

/// @brief GetPanningReply
pub const GetPanningReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"left": u16,
    @"top": u16,
    @"width": u16,
    @"height": u16,
    @"track_left": u16,
    @"track_top": u16,
    @"track_width": u16,
    @"track_height": u16,
    @"border_left": i16,
    @"border_top": i16,
    @"border_right": i16,
    @"border_bottom": i16,
};

/// @brief SetPanningcookie
pub const SetPanningcookie = struct {
    sequence: c_uint,
};

/// @brief SetPanningRequest
pub const SetPanningRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 29,
    @"length": u16,
    @"crtc": xcb.randr.CRTC,
    @"timestamp": xcb.TIMESTAMP,
    @"left": u16,
    @"top": u16,
    @"width": u16,
    @"height": u16,
    @"track_left": u16,
    @"track_top": u16,
    @"track_width": u16,
    @"track_height": u16,
    @"border_left": i16,
    @"border_top": i16,
    @"border_right": i16,
    @"border_bottom": i16,
};

/// @brief SetPanningReply
pub const SetPanningReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
};

/// @brief SetOutputPrimaryRequest
pub const SetOutputPrimaryRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 30,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"output": xcb.randr.OUTPUT,
};

/// @brief GetOutputPrimarycookie
pub const GetOutputPrimarycookie = struct {
    sequence: c_uint,
};

/// @brief GetOutputPrimaryRequest
pub const GetOutputPrimaryRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 31,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetOutputPrimaryReply
pub const GetOutputPrimaryReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"output": xcb.randr.OUTPUT,
};

/// @brief GetProviderscookie
pub const GetProviderscookie = struct {
    sequence: c_uint,
};

/// @brief GetProvidersRequest
pub const GetProvidersRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 32,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetProvidersReply
pub const GetProvidersReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"num_providers": u16,
    @"pad1": [18]u8,
    @"providers": [*]xcb.randr.PROVIDER,
};

pub const ProviderCapability = extern enum(c_uint) {
    @"SourceOutput" = 1,
    @"SinkOutput" = 2,
    @"SourceOffload" = 4,
    @"SinkOffload" = 8,
};

/// @brief GetProviderInfocookie
pub const GetProviderInfocookie = struct {
    sequence: c_uint,
};

/// @brief GetProviderInfoRequest
pub const GetProviderInfoRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 33,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"config_timestamp": xcb.TIMESTAMP,
};

/// @brief GetProviderInfoReply
pub const GetProviderInfoReply = extern struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"capabilities": u32,
    @"num_crtcs": u16,
    @"num_outputs": u16,
    @"num_associated_providers": u16,
    @"name_len": u16,
    @"pad0": [8]u8,
    @"crtcs": [*]xcb.randr.CRTC,
    @"outputs": [*]xcb.randr.OUTPUT,
    @"associated_providers": [*]xcb.randr.PROVIDER,
    @"associated_capability": [*]u32,
    @"name": [*]u8,
};

/// @brief SetProviderOffloadSinkRequest
pub const SetProviderOffloadSinkRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 34,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"sink_provider": xcb.randr.PROVIDER,
    @"config_timestamp": xcb.TIMESTAMP,
};

/// @brief SetProviderOutputSourceRequest
pub const SetProviderOutputSourceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 35,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"source_provider": xcb.randr.PROVIDER,
    @"config_timestamp": xcb.TIMESTAMP,
};

/// @brief ListProviderPropertiescookie
pub const ListProviderPropertiescookie = struct {
    sequence: c_uint,
};

/// @brief ListProviderPropertiesRequest
pub const ListProviderPropertiesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 36,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
};

/// @brief ListProviderPropertiesReply
pub const ListProviderPropertiesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_atoms": u16,
    @"pad1": [22]u8,
    @"atoms": [*]xcb.ATOM,
};

/// @brief QueryProviderPropertycookie
pub const QueryProviderPropertycookie = struct {
    sequence: c_uint,
};

/// @brief QueryProviderPropertyRequest
pub const QueryProviderPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 37,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"property": xcb.ATOM,
};

/// @brief QueryProviderPropertyReply
pub const QueryProviderPropertyReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pending": u8,
    @"range": u8,
    @"immutable": u8,
    @"pad1": [21]u8,
    @"valid_values": [*]i32,
};

/// @brief ConfigureProviderPropertyRequest
pub const ConfigureProviderPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 38,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"property": xcb.ATOM,
    @"pending": u8,
    @"range": u8,
    @"pad0": [2]u8,
    @"values": [*]i32,
};

/// @brief ChangeProviderPropertyRequest
pub const ChangeProviderPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 39,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"format": u8,
    @"mode": u8,
    @"pad0": [2]u8,
    @"num_items": u32,
    @"data": [*]u8,
};

/// @brief DeleteProviderPropertyRequest
pub const DeleteProviderPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 40,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"property": xcb.ATOM,
};

/// @brief GetProviderPropertycookie
pub const GetProviderPropertycookie = struct {
    sequence: c_uint,
};

/// @brief GetProviderPropertyRequest
pub const GetProviderPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 41,
    @"length": u16,
    @"provider": xcb.randr.PROVIDER,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"long_offset": u32,
    @"long_length": u32,
    @"delete": u8,
    @"pending": u8,
    @"pad0": [2]u8,
};

/// @brief GetProviderPropertyReply
pub const GetProviderPropertyReply = extern struct {
    @"response_type": u8,
    @"format": u8,
    @"sequence": u16,
    @"length": u32,
    @"type": xcb.ATOM,
    @"bytes_after": u32,
    @"num_items": u32,
    @"pad0": [12]u8,
    @"data": [*]u8,
};

/// Opcode for ScreenChangeNotify.
pub const ScreenChangeNotifyOpcode = 0;

/// @brief ScreenChangeNotifyEvent
pub const ScreenChangeNotifyEvent = extern struct {
    @"response_type": u8,
    @"rotation": u8,
    @"sequence": u16,
    @"timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"root": xcb.WINDOW,
    @"request_window": xcb.WINDOW,
    @"sizeID": u16,
    @"subpixel_order": u16,
    @"width": u16,
    @"height": u16,
    @"mwidth": u16,
    @"mheight": u16,
};

pub const Notify = extern enum(c_uint) {
    @"CrtcChange" = 0,
    @"OutputChange" = 1,
    @"OutputProperty" = 2,
    @"ProviderChange" = 3,
    @"ProviderProperty" = 4,
    @"ResourceChange" = 5,
};

/// @brief CrtcChange
pub const CrtcChange = extern struct {
    @"timestamp": xcb.TIMESTAMP,
    @"window": xcb.WINDOW,
    @"crtc": xcb.randr.CRTC,
    @"mode": xcb.randr.MODE,
    @"rotation": u16,
    @"pad0": [2]u8,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
};

/// @brief OutputChange
pub const OutputChange = extern struct {
    @"timestamp": xcb.TIMESTAMP,
    @"config_timestamp": xcb.TIMESTAMP,
    @"window": xcb.WINDOW,
    @"output": xcb.randr.OUTPUT,
    @"crtc": xcb.randr.CRTC,
    @"mode": xcb.randr.MODE,
    @"rotation": u16,
    @"connection": u8,
    @"subpixel_order": u8,
};

/// @brief OutputProperty
pub const OutputProperty = extern struct {
    @"window": xcb.WINDOW,
    @"output": xcb.randr.OUTPUT,
    @"atom": xcb.ATOM,
    @"timestamp": xcb.TIMESTAMP,
    @"status": u8,
    @"pad0": [11]u8,
};

/// @brief ProviderChange
pub const ProviderChange = extern struct {
    @"timestamp": xcb.TIMESTAMP,
    @"window": xcb.WINDOW,
    @"provider": xcb.randr.PROVIDER,
    @"pad0": [16]u8,
};

/// @brief ProviderProperty
pub const ProviderProperty = extern struct {
    @"window": xcb.WINDOW,
    @"provider": xcb.randr.PROVIDER,
    @"atom": xcb.ATOM,
    @"timestamp": xcb.TIMESTAMP,
    @"state": u8,
    @"pad0": [11]u8,
};

/// @brief ResourceChange
pub const ResourceChange = extern struct {
    @"timestamp": xcb.TIMESTAMP,
    @"window": xcb.WINDOW,
    @"pad0": [20]u8,
};

/// @brief NotifyData
pub const NotifyData = extern union {
    @"cc": xcb.randr.CrtcChange,
    @"oc": xcb.randr.OutputChange,
    @"op": xcb.randr.OutputProperty,
    @"pc": xcb.randr.ProviderChange,
    @"pp": xcb.randr.ProviderProperty,
    @"rc": xcb.randr.ResourceChange,
};

/// Opcode for Notify.
pub const NotifyOpcode = 1;

/// @brief NotifyEvent
pub const NotifyEvent = extern struct {
    @"response_type": u8,
    @"subCode": u8,
    @"sequence": u16,
    @"u": xcb.randr.NotifyData,
};

/// @brief MonitorInfo
pub const MonitorInfo = extern struct {
    @"name": xcb.ATOM,
    @"primary": u8,
    @"automatic": u8,
    @"nOutput": u16,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"width_in_millimeters": u32,
    @"height_in_millimeters": u32,
    @"outputs": [*]xcb.randr.OUTPUT,
};

/// @brief GetMonitorscookie
pub const GetMonitorscookie = struct {
    sequence: c_uint,
};

/// @brief GetMonitorsRequest
pub const GetMonitorsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 42,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"get_active": u8,
};

/// @brief GetMonitorsReply
pub const GetMonitorsReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"timestamp": xcb.TIMESTAMP,
    @"nMonitors": u32,
    @"nOutputs": u32,
    @"pad1": [12]u8,
    @"monitors": [*]xcb.randr.MonitorInfo,
};

/// @brief SetMonitorRequest
pub const SetMonitorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 43,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief DeleteMonitorRequest
pub const DeleteMonitorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 44,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"name": xcb.ATOM,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
