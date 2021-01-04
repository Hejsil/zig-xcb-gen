//!
//! This file generated automatically from xproto.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

/// @brief CHAR2B
pub const CHAR2B = struct {
    @"byte1": u8,
    @"byte2": u8,
};

pub const WINDOW = u32;

pub const PIXMAP = u32;

pub const CURSOR = u32;

pub const FONT = u32;

pub const GCONTEXT = u32;

pub const COLORMAP = u32;

pub const ATOM = u32;

pub const DRAWABLE = u32;

pub const FONTABLE = u32;

pub const BOOL32 = u32;

pub const VISUALID = u32;

pub const TIMESTAMP = u32;

pub const KEYSYM = u32;

pub const KEYCODE = u8;

pub const KEYCODE32 = u32;

pub const BUTTON = u8;

/// @brief POINT
pub const POINT = struct {
    @"x": i16,
    @"y": i16,
};

/// @brief RECTANGLE
pub const RECTANGLE = struct {
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
};

/// @brief ARC
pub const ARC = struct {
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"angle1": i16,
    @"angle2": i16,
};

/// @brief FORMAT
pub const FORMAT = struct {
    @"depth": u8,
    @"bits_per_pixel": u8,
    @"scanline_pad": u8,
    @"pad0": [5]u8,
};

pub const VisualClass = extern enum(c_uint) {
    @"StaticGray" = 0,
    @"GrayScale" = 1,
    @"StaticColor" = 2,
    @"PseudoColor" = 3,
    @"TrueColor" = 4,
    @"DirectColor" = 5,
};

/// @brief VISUALTYPE
pub const VISUALTYPE = struct {
    @"visual_id": xcb.VISUALID,
    @"class": u8,
    @"bits_per_rgb_value": u8,
    @"colormap_entries": u16,
    @"red_mask": u32,
    @"green_mask": u32,
    @"blue_mask": u32,
    @"pad0": [4]u8,
};

/// @brief DEPTH
pub const DEPTH = struct {
    @"depth": u8,
    @"pad0": u8,
    @"visuals_len": u16,
    @"pad1": [4]u8,
    @"visuals": []xcb.VISUALTYPE,
};

pub const EventMask = extern enum(c_uint) {
    @"NoEvent" = 0,
    @"KeyPress" = 1,
    @"KeyRelease" = 2,
    @"ButtonPress" = 4,
    @"ButtonRelease" = 8,
    @"EnterWindow" = 16,
    @"LeaveWindow" = 32,
    @"PointerMotion" = 64,
    @"PointerMotionHint" = 128,
    @"Button1Motion" = 256,
    @"Button2Motion" = 512,
    @"Button3Motion" = 1024,
    @"Button4Motion" = 2048,
    @"Button5Motion" = 4096,
    @"ButtonMotion" = 8192,
    @"KeymapState" = 16384,
    @"Exposure" = 32768,
    @"VisibilityChange" = 65536,
    @"StructureNotify" = 131072,
    @"ResizeRedirect" = 262144,
    @"SubstructureNotify" = 524288,
    @"SubstructureRedirect" = 1048576,
    @"FocusChange" = 2097152,
    @"PropertyChange" = 4194304,
    @"ColorMapChange" = 8388608,
    @"OwnerGrabButton" = 16777216,
};

pub const BackingStore = extern enum(c_uint) {
    @"NotUseful" = 0,
    @"WhenMapped" = 1,
    @"Always" = 2,
};

/// @brief SCREEN
pub const SCREEN = struct {
    @"root": xcb.WINDOW,
    @"default_colormap": xcb.COLORMAP,
    @"white_pixel": u32,
    @"black_pixel": u32,
    @"current_input_masks": u32,
    @"width_in_pixels": u16,
    @"height_in_pixels": u16,
    @"width_in_millimeters": u16,
    @"height_in_millimeters": u16,
    @"min_installed_maps": u16,
    @"max_installed_maps": u16,
    @"root_visual": xcb.VISUALID,
    @"backing_stores": u8,
    @"save_unders": u8,
    @"root_depth": u8,
    @"allowed_depths_len": u8,
    @"allowed_depths": []xcb.DEPTH,
};

/// @brief SetupRequest
pub const SetupRequest = struct {
    @"byte_order": u8,
    @"pad0": u8,
    @"protocol_major_version": u16,
    @"protocol_minor_version": u16,
    @"authorization_protocol_name_len": u16,
    @"authorization_protocol_data_len": u16,
    @"pad1": [2]u8,
    @"authorization_protocol_name": []u8,
    @"authorization_protocol_data": []u8,
};

/// @brief SetupFailed
pub const SetupFailed = struct {
    @"status": u8,
    @"reason_len": u8,
    @"protocol_major_version": u16,
    @"protocol_minor_version": u16,
    @"length": u16,
    @"reason": []u8,
};

/// @brief SetupAuthenticate
pub const SetupAuthenticate = struct {
    @"status": u8,
    @"pad0": [5]u8,
    @"length": u16,
    @"reason": []u8,
};

pub const ImageOrder = extern enum(c_uint) {
    @"LSBFirst" = 0,
    @"MSBFirst" = 1,
};

/// @brief Setup
pub const Setup = struct {
    @"status": u8,
    @"pad0": u8,
    @"protocol_major_version": u16,
    @"protocol_minor_version": u16,
    @"length": u16,
    @"release_number": u32,
    @"resource_id_base": u32,
    @"resource_id_mask": u32,
    @"motion_buffer_size": u32,
    @"vendor_len": u16,
    @"maximum_request_length": u16,
    @"roots_len": u8,
    @"pixmap_formats_len": u8,
    @"image_byte_order": u8,
    @"bitmap_format_bit_order": u8,
    @"bitmap_format_scanline_unit": u8,
    @"bitmap_format_scanline_pad": u8,
    @"min_keycode": xcb.KEYCODE,
    @"max_keycode": xcb.KEYCODE,
    @"pad1": [4]u8,
    @"vendor": []u8,
    @"pixmap_formats": []xcb.FORMAT,
    @"roots": []xcb.SCREEN,
};

pub const ModMask = extern enum(c_uint) {
    @"Shift" = 1,
    @"Lock" = 2,
    @"Control" = 4,
    @"1" = 8,
    @"2" = 16,
    @"3" = 32,
    @"4" = 64,
    @"5" = 128,
    @"Any" = 32768,
};

pub const KeyButMask = extern enum(c_uint) {
    @"Shift" = 1,
    @"Lock" = 2,
    @"Control" = 4,
    @"Mod1" = 8,
    @"Mod2" = 16,
    @"Mod3" = 32,
    @"Mod4" = 64,
    @"Mod5" = 128,
    @"Button1" = 256,
    @"Button2" = 512,
    @"Button3" = 1024,
    @"Button4" = 2048,
    @"Button5" = 4096,
};

pub const Window = extern enum(c_uint) {
    @"None" = 0,
};

/// Opcode for KeyPress.
pub const KeyPressOpcode = 2;

/// @brief KeyPressEvent
pub const KeyPressEvent = struct {
    @"response_type": u8,
    @"detail": xcb.KEYCODE,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"root_x": i16,
    @"root_y": i16,
    @"event_x": i16,
    @"event_y": i16,
    @"state": u16,
    @"same_screen": u8,
    @"pad0": u8,
};

/// Opcode for KeyRelease.
pub const KeyReleaseOpcode = 3;

pub const KeyReleaseEvent = xcb.KeyPressEvent;
pub const ButtonMask = extern enum(c_uint) {
    @"1" = 256,
    @"2" = 512,
    @"3" = 1024,
    @"4" = 2048,
    @"5" = 4096,
    @"Any" = 32768,
};

/// Opcode for ButtonPress.
pub const ButtonPressOpcode = 4;

/// @brief ButtonPressEvent
pub const ButtonPressEvent = struct {
    @"response_type": u8,
    @"detail": xcb.BUTTON,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"root_x": i16,
    @"root_y": i16,
    @"event_x": i16,
    @"event_y": i16,
    @"state": u16,
    @"same_screen": u8,
    @"pad0": u8,
};

/// Opcode for ButtonRelease.
pub const ButtonReleaseOpcode = 5;

pub const ButtonReleaseEvent = xcb.ButtonPressEvent;
pub const Motion = extern enum(c_uint) {
    @"Normal" = 0,
    @"Hint" = 1,
};

/// Opcode for MotionNotify.
pub const MotionNotifyOpcode = 6;

/// @brief MotionNotifyEvent
pub const MotionNotifyEvent = struct {
    @"response_type": u8,
    @"detail": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"root_x": i16,
    @"root_y": i16,
    @"event_x": i16,
    @"event_y": i16,
    @"state": u16,
    @"same_screen": u8,
    @"pad0": u8,
};

pub const NotifyDetail = extern enum(c_uint) {
    @"Ancestor" = 0,
    @"Virtual" = 1,
    @"Inferior" = 2,
    @"Nonlinear" = 3,
    @"NonlinearVirtual" = 4,
    @"Pointer" = 5,
    @"PointerRoot" = 6,
    @"None" = 7,
};

pub const NotifyMode = extern enum(c_uint) {
    @"Normal" = 0,
    @"Grab" = 1,
    @"Ungrab" = 2,
    @"WhileGrabbed" = 3,
};

/// Opcode for EnterNotify.
pub const EnterNotifyOpcode = 7;

/// @brief EnterNotifyEvent
pub const EnterNotifyEvent = struct {
    @"response_type": u8,
    @"detail": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"root_x": i16,
    @"root_y": i16,
    @"event_x": i16,
    @"event_y": i16,
    @"state": u16,
    @"mode": u8,
    @"same_screen_focus": u8,
};

/// Opcode for LeaveNotify.
pub const LeaveNotifyOpcode = 8;

pub const LeaveNotifyEvent = xcb.EnterNotifyEvent;
/// Opcode for FocusIn.
pub const FocusInOpcode = 9;

/// @brief FocusInEvent
pub const FocusInEvent = struct {
    @"response_type": u8,
    @"detail": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"mode": u8,
    @"pad0": [3]u8,
};

/// Opcode for FocusOut.
pub const FocusOutOpcode = 10;

pub const FocusOutEvent = xcb.FocusInEvent;
/// Opcode for KeymapNotify.
pub const KeymapNotifyOpcode = 11;

/// @brief KeymapNotifyEvent
pub const KeymapNotifyEvent = struct {
    @"response_type": u8,
    @"keys": [31]u8,
};

/// Opcode for Expose.
pub const ExposeOpcode = 12;

/// @brief ExposeEvent
pub const ExposeEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"x": u16,
    @"y": u16,
    @"width": u16,
    @"height": u16,
    @"count": u16,
    @"pad1": [2]u8,
};

/// Opcode for GraphicsExposure.
pub const GraphicsExposureOpcode = 13;

/// @brief GraphicsExposureEvent
pub const GraphicsExposureEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"drawable": xcb.DRAWABLE,
    @"x": u16,
    @"y": u16,
    @"width": u16,
    @"height": u16,
    @"minor_opcode": u16,
    @"count": u16,
    @"major_opcode": u8,
    @"pad1": [3]u8,
};

/// Opcode for NoExposure.
pub const NoExposureOpcode = 14;

/// @brief NoExposureEvent
pub const NoExposureEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"drawable": xcb.DRAWABLE,
    @"minor_opcode": u16,
    @"major_opcode": u8,
    @"pad1": u8,
};

pub const Visibility = extern enum(c_uint) {
    @"Unobscured" = 0,
    @"PartiallyObscured" = 1,
    @"FullyObscured" = 2,
};

/// Opcode for VisibilityNotify.
pub const VisibilityNotifyOpcode = 15;

/// @brief VisibilityNotifyEvent
pub const VisibilityNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"state": u8,
    @"pad1": [3]u8,
};

/// Opcode for CreateNotify.
pub const CreateNotifyOpcode = 16;

/// @brief CreateNotifyEvent
pub const CreateNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"parent": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"border_width": u16,
    @"override_redirect": u8,
    @"pad1": u8,
};

/// Opcode for DestroyNotify.
pub const DestroyNotifyOpcode = 17;

/// @brief DestroyNotifyEvent
pub const DestroyNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"window": xcb.WINDOW,
};

/// Opcode for UnmapNotify.
pub const UnmapNotifyOpcode = 18;

/// @brief UnmapNotifyEvent
pub const UnmapNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"from_configure": u8,
    @"pad1": [3]u8,
};

/// Opcode for MapNotify.
pub const MapNotifyOpcode = 19;

/// @brief MapNotifyEvent
pub const MapNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"override_redirect": u8,
    @"pad1": [3]u8,
};

/// Opcode for MapRequest.
pub const MapRequestOpcode = 20;

/// @brief MapRequestEvent
pub const MapRequestEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"parent": xcb.WINDOW,
    @"window": xcb.WINDOW,
};

/// Opcode for ReparentNotify.
pub const ReparentNotifyOpcode = 21;

/// @brief ReparentNotifyEvent
pub const ReparentNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"parent": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"override_redirect": u8,
    @"pad1": [3]u8,
};

/// Opcode for ConfigureNotify.
pub const ConfigureNotifyOpcode = 22;

/// @brief ConfigureNotifyEvent
pub const ConfigureNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"above_sibling": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"border_width": u16,
    @"override_redirect": u8,
    @"pad1": u8,
};

/// Opcode for ConfigureRequest.
pub const ConfigureRequestOpcode = 23;

/// @brief ConfigureRequestEvent
pub const ConfigureRequestEvent = struct {
    @"response_type": u8,
    @"stack_mode": u8,
    @"sequence": u16,
    @"parent": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"sibling": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"border_width": u16,
    @"value_mask": u16,
};

/// Opcode for GravityNotify.
pub const GravityNotifyOpcode = 24;

/// @brief GravityNotifyEvent
pub const GravityNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
};

/// Opcode for ResizeRequest.
pub const ResizeRequestOpcode = 25;

/// @brief ResizeRequestEvent
pub const ResizeRequestEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"width": u16,
    @"height": u16,
};

pub const Place = extern enum(c_uint) {
    /// The window is now on top of all siblings.
    @"OnTop" = 0,
    /// The window is now below all siblings.
    @"OnBottom" = 1,
};

/// Opcode for CirculateNotify.
pub const CirculateNotifyOpcode = 26;

/// @brief CirculateNotifyEvent
pub const CirculateNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"event": xcb.WINDOW,
    @"window": xcb.WINDOW,
    @"pad1": [4]u8,
    @"place": u8,
    @"pad2": [3]u8,
};

/// Opcode for CirculateRequest.
pub const CirculateRequestOpcode = 27;

pub const CirculateRequestEvent = xcb.CirculateNotifyEvent;
pub const Property = extern enum(c_uint) {
    @"NewValue" = 0,
    @"Delete" = 1,
};

/// Opcode for PropertyNotify.
pub const PropertyNotifyOpcode = 28;

/// @brief PropertyNotifyEvent
pub const PropertyNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"atom": xcb.ATOM,
    @"time": xcb.TIMESTAMP,
    @"state": u8,
    @"pad1": [3]u8,
};

/// Opcode for SelectionClear.
pub const SelectionClearOpcode = 29;

/// @brief SelectionClearEvent
pub const SelectionClearEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"owner": xcb.WINDOW,
    @"selection": xcb.ATOM,
};

pub const Time = extern enum(c_uint) {
    @"CurrentTime" = 0,
};

pub const Atom = extern enum(c_uint) {
    @"None" = 0,
    @"Any" = 0,
    @"PRIMARY" = 1,
    @"SECONDARY" = 2,
    @"ARC" = 3,
    @"ATOM" = 4,
    @"BITMAP" = 5,
    @"CARDINAL" = 6,
    @"COLORMAP" = 7,
    @"CURSOR" = 8,
    @"CUT_BUFFER0" = 9,
    @"CUT_BUFFER1" = 10,
    @"CUT_BUFFER2" = 11,
    @"CUT_BUFFER3" = 12,
    @"CUT_BUFFER4" = 13,
    @"CUT_BUFFER5" = 14,
    @"CUT_BUFFER6" = 15,
    @"CUT_BUFFER7" = 16,
    @"DRAWABLE" = 17,
    @"FONT" = 18,
    @"INTEGER" = 19,
    @"PIXMAP" = 20,
    @"POINT" = 21,
    @"RECTANGLE" = 22,
    @"RESOURCE_MANAGER" = 23,
    @"RGB_COLOR_MAP" = 24,
    @"RGB_BEST_MAP" = 25,
    @"RGB_BLUE_MAP" = 26,
    @"RGB_DEFAULT_MAP" = 27,
    @"RGB_GRAY_MAP" = 28,
    @"RGB_GREEN_MAP" = 29,
    @"RGB_RED_MAP" = 30,
    @"STRING" = 31,
    @"VISUALID" = 32,
    @"WINDOW" = 33,
    @"WM_COMMAND" = 34,
    @"WM_HINTS" = 35,
    @"WM_CLIENT_MACHINE" = 36,
    @"WM_ICON_NAME" = 37,
    @"WM_ICON_SIZE" = 38,
    @"WM_NAME" = 39,
    @"WM_NORMAL_HINTS" = 40,
    @"WM_SIZE_HINTS" = 41,
    @"WM_ZOOM_HINTS" = 42,
    @"MIN_SPACE" = 43,
    @"NORM_SPACE" = 44,
    @"MAX_SPACE" = 45,
    @"END_SPACE" = 46,
    @"SUPERSCRIPT_X" = 47,
    @"SUPERSCRIPT_Y" = 48,
    @"SUBSCRIPT_X" = 49,
    @"SUBSCRIPT_Y" = 50,
    @"UNDERLINE_POSITION" = 51,
    @"UNDERLINE_THICKNESS" = 52,
    @"STRIKEOUT_ASCENT" = 53,
    @"STRIKEOUT_DESCENT" = 54,
    @"ITALIC_ANGLE" = 55,
    @"X_HEIGHT" = 56,
    @"QUAD_WIDTH" = 57,
    @"WEIGHT" = 58,
    @"POINT_SIZE" = 59,
    @"RESOLUTION" = 60,
    @"COPYRIGHT" = 61,
    @"NOTICE" = 62,
    @"FONT_NAME" = 63,
    @"FAMILY_NAME" = 64,
    @"FULL_NAME" = 65,
    @"CAP_HEIGHT" = 66,
    @"WM_CLASS" = 67,
    @"WM_TRANSIENT_FOR" = 68,
};

/// Opcode for SelectionRequest.
pub const SelectionRequestOpcode = 30;

/// @brief SelectionRequestEvent
pub const SelectionRequestEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"owner": xcb.WINDOW,
    @"requestor": xcb.WINDOW,
    @"selection": xcb.ATOM,
    @"target": xcb.ATOM,
    @"property": xcb.ATOM,
};

/// Opcode for SelectionNotify.
pub const SelectionNotifyOpcode = 31;

/// @brief SelectionNotifyEvent
pub const SelectionNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"requestor": xcb.WINDOW,
    @"selection": xcb.ATOM,
    @"target": xcb.ATOM,
    @"property": xcb.ATOM,
};

pub const ColormapState = extern enum(c_uint) {
    /// The colormap was uninstalled.
    @"Uninstalled" = 0,
    /// The colormap was installed.
    @"Installed" = 1,
};

pub const Colormap = extern enum(c_uint) {
    @"None" = 0,
};

/// Opcode for ColormapNotify.
pub const ColormapNotifyOpcode = 32;

/// @brief ColormapNotifyEvent
pub const ColormapNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"colormap": xcb.COLORMAP,
    @"new": u8,
    @"state": u8,
    @"pad1": [2]u8,
};

/// @brief ClientMessageData
pub const ClientMessageData = union {
    @"data8": [20]u8,
    @"data16": [10]u16,
    @"data32": [5]u32,
};

/// Opcode for ClientMessage.
pub const ClientMessageOpcode = 33;

/// @brief ClientMessageEvent
pub const ClientMessageEvent = struct {
    @"response_type": u8,
    @"format": u8,
    @"sequence": u16,
    @"window": xcb.WINDOW,
    @"type": xcb.ATOM,
    @"data": xcb.ClientMessageData,
};

pub const Mapping = extern enum(c_uint) {
    @"Modifier" = 0,
    @"Keyboard" = 1,
    @"Pointer" = 2,
};

/// Opcode for MappingNotify.
pub const MappingNotifyOpcode = 34;

/// @brief MappingNotifyEvent
pub const MappingNotifyEvent = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"request": u8,
    @"first_keycode": xcb.KEYCODE,
    @"count": u8,
    @"pad1": u8,
};

/// Opcode for GeGeneric.
pub const GeGenericOpcode = 35;

/// @brief GeGenericEvent
pub const GeGenericEvent = struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"pad0": [22]u8,
    @"full_sequence": u32,
};

/// Opcode for Request.
pub const RequestOpcode = 1;

/// Opcode for Match.
pub const MatchOpcode = 8;

/// Opcode for Access.
pub const AccessOpcode = 10;

/// Opcode for Alloc.
pub const AllocOpcode = 11;

/// Opcode for Name.
pub const NameOpcode = 15;

/// Opcode for Length.
pub const LengthOpcode = 16;

/// Opcode for Implementation.
pub const ImplementationOpcode = 17;

/// @brief RequestError
pub const RequestError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
    @"bad_value": u32,
    @"minor_opcode": u16,
    @"major_opcode": u8,
    @"pad0": u8,
};

/// Opcode for Value.
pub const ValueOpcode = 2;

/// Opcode for Window.
pub const WindowOpcode = 3;

/// Opcode for Pixmap.
pub const PixmapOpcode = 4;

/// Opcode for Atom.
pub const AtomOpcode = 5;

/// Opcode for Cursor.
pub const CursorOpcode = 6;

/// Opcode for Font.
pub const FontOpcode = 7;

/// Opcode for Drawable.
pub const DrawableOpcode = 9;

/// Opcode for Colormap.
pub const ColormapOpcode = 12;

/// Opcode for GContext.
pub const GContextOpcode = 13;

/// Opcode for IDChoice.
pub const IDChoiceOpcode = 14;

/// @brief ValueError
pub const ValueError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
    @"bad_value": u32,
    @"minor_opcode": u16,
    @"major_opcode": u8,
    @"pad0": u8,
};

pub const WindowClass = extern enum(c_uint) {
    @"CopyFromParent" = 0,
    @"InputOutput" = 1,
    @"InputOnly" = 2,
};

pub const CW = extern enum(c_uint) {
    /// Overrides the default background-pixmap. The background pixmap and window must
    /// have the same root and same depth. Any size pixmap can be used, although some
    /// sizes may be faster than others.
    ///
    /// If `XCB_BACK_PIXMAP_NONE` is specified, the window has no defined background.
    /// The server may fill the contents with the previous screen contents or with
    /// contents of its own choosing.
    ///
    /// If `XCB_BACK_PIXMAP_PARENT_RELATIVE` is specified, the parent's background is
    /// used, but the window must have the same depth as the parent (or a Match error
    /// results).   The parent's background is tracked, and the current version is
    /// used each time the window background is required.
    @"BackPixmap" = 1,
    /// Overrides `BackPixmap`. A pixmap of undefined size filled with the specified
    /// background pixel is used for the background. Range-checking is not performed,
    /// the background pixel is truncated to the appropriate number of bits.
    @"BackPixel" = 2,
    /// Overrides the default border-pixmap. The border pixmap and window must have the
    /// same root and the same depth. Any size pixmap can be used, although some sizes
    /// may be faster than others.
    ///
    /// The special value `XCB_COPY_FROM_PARENT` means the parent's border pixmap is
    /// copied (subsequent changes to the parent's border attribute do not affect the
    /// child), but the window must have the same depth as the parent.
    @"BorderPixmap" = 4,
    /// Overrides `BorderPixmap`. A pixmap of undefined size filled with the specified
    /// border pixel is used for the border. Range checking is not performed on the
    /// border-pixel value, it is truncated to the appropriate number of bits.
    @"BorderPixel" = 8,
    /// Defines which region of the window should be retained if the window is resized.
    @"BitGravity" = 16,
    /// Defines how the window should be repositioned if the parent is resized (see
    /// `ConfigureWindow`).
    @"WinGravity" = 32,
    /// A backing-store of `WhenMapped` advises the server that maintaining contents of
    /// obscured regions when the window is mapped would be beneficial. A backing-store
    /// of `Always` advises the server that maintaining contents even when the window
    /// is unmapped would be beneficial. In this case, the server may generate an
    /// exposure event when the window is created. A value of `NotUseful` advises the
    /// server that maintaining contents is unnecessary, although a server may still
    /// choose to maintain contents while the window is mapped. Note that if the server
    /// maintains contents, then the server should maintain complete contents not just
    /// the region within the parent boundaries, even if the window is larger than its
    /// parent. While the server maintains contents, exposure events will not normally
    /// be generated, but the server may stop maintaining contents at any time.
    @"BackingStore" = 64,
    /// The backing-planes indicates (with bits set to 1) which bit planes of the
    /// window hold dynamic data that must be preserved in backing-stores and during
    /// save-unders.
    @"BackingPlanes" = 128,
    /// The backing-pixel specifies what value to use in planes not covered by
    /// backing-planes. The server is free to save only the specified bit planes in the
    /// backing-store or save-under and regenerate the remaining planes with the
    /// specified pixel value. Any bits beyond the specified depth of the window in
    /// these values are simply ignored.
    @"BackingPixel" = 256,
    /// The override-redirect specifies whether map and configure requests on this
    /// window should override a SubstructureRedirect on the parent, typically to
    /// inform a window manager not to tamper with the window.
    @"OverrideRedirect" = 512,
    /// If 1, the server is advised that when this window is mapped, saving the
    /// contents of windows it obscures would be beneficial.
    @"SaveUnder" = 1024,
    /// The event-mask defines which events the client is interested in for this window
    /// (or for some event types, inferiors of the window).
    @"EventMask" = 2048,
    /// The do-not-propagate-mask defines which events should not be propagated to
    /// ancestor windows when no client has the event type selected in this window.
    @"DontPropagate" = 4096,
    /// The colormap specifies the colormap that best reflects the true colors of the window. Servers
    /// capable of supporting multiple hardware colormaps may use this information, and window man-
    /// agers may use it for InstallColormap requests. The colormap must have the same visual type
    /// and root as the window (or a Match error results). If CopyFromParent is specified, the parent's
    /// colormap is copied (subsequent changes to the parent's colormap attribute do not affect the child).
    /// However, the window must have the same visual type as the parent (or a Match error results),
    /// and the parent must not have a colormap of None (or a Match error results). For an explanation
    /// of None, see FreeColormap request. The colormap is copied by sharing the colormap object
    /// between the child and the parent, not by making a complete copy of the colormap contents.
    @"Colormap" = 8192,
    /// If a cursor is specified, it will be used whenever the pointer is in the window. If None is speci-
    /// fied, the parent's cursor will be used when the pointer is in the window, and any change in the
    /// parent's cursor will cause an immediate change in the displayed cursor.
    @"Cursor" = 16384,
};

pub const BackPixmap = extern enum(c_uint) {
    @"None" = 0,
    @"ParentRelative" = 1,
};

pub const Gravity = extern enum(c_uint) {
    @"BitForget" = 0,
    @"WinUnmap" = 0,
    @"NorthWest" = 1,
    @"North" = 2,
    @"NorthEast" = 3,
    @"West" = 4,
    @"Center" = 5,
    @"East" = 6,
    @"SouthWest" = 7,
    @"South" = 8,
    @"SouthEast" = 9,
    @"Static" = 10,
};

/// @brief CreateWindowRequest
pub const CreateWindowRequest = struct {
    @"major_opcode": u8,
    @"depth": u8,
    @"length": u16,
    @"wid": xcb.WINDOW,
    @"parent": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"border_width": u16,
    @"class": u16,
    @"visual": xcb.VISUALID,
    @"value_mask": u32,
};

/// @brief ChangeWindowAttributesRequest
pub const ChangeWindowAttributesRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"value_mask": u32,
};

pub const MapState = extern enum(c_uint) {
    @"Unmapped" = 0,
    @"Unviewable" = 1,
    @"Viewable" = 2,
};

/// @brief GetWindowAttributescookie
pub const GetWindowAttributescookie = struct {
    sequence: c_uint,
};

/// @brief GetWindowAttributesRequest
pub const GetWindowAttributesRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetWindowAttributesReply
pub const GetWindowAttributesReply = struct {
    @"response_type": u8,
    @"backing_store": u8,
    @"sequence": u16,
    @"length": u32,
    @"visual": xcb.VISUALID,
    @"class": u16,
    @"bit_gravity": u8,
    @"win_gravity": u8,
    @"backing_planes": u32,
    @"backing_pixel": u32,
    @"save_under": u8,
    @"map_is_installed": u8,
    @"map_state": u8,
    @"override_redirect": u8,
    @"colormap": xcb.COLORMAP,
    @"all_event_masks": u32,
    @"your_event_mask": u32,
    @"do_not_propagate_mask": u16,
    @"pad0": [2]u8,
};

/// @brief DestroyWindowRequest
pub const DestroyWindowRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief DestroySubwindowsRequest
pub const DestroySubwindowsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

pub const SetMode = extern enum(c_uint) {
    @"Insert" = 0,
    @"Delete" = 1,
};

/// @brief ChangeSaveSetRequest
pub const ChangeSaveSetRequest = struct {
    @"major_opcode": u8,
    @"mode": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief ReparentWindowRequest
pub const ReparentWindowRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"parent": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
};

/// @brief MapWindowRequest
pub const MapWindowRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief MapSubwindowsRequest
pub const MapSubwindowsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief UnmapWindowRequest
pub const UnmapWindowRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief UnmapSubwindowsRequest
pub const UnmapSubwindowsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

pub const ConfigWindow = extern enum(c_uint) {
    @"X" = 1,
    @"Y" = 2,
    @"Width" = 4,
    @"Height" = 8,
    @"BorderWidth" = 16,
    @"Sibling" = 32,
    @"StackMode" = 64,
};

pub const StackMode = extern enum(c_uint) {
    @"Above" = 0,
    @"Below" = 1,
    @"TopIf" = 2,
    @"BottomIf" = 3,
    @"Opposite" = 4,
};

/// @brief ConfigureWindowRequest
pub const ConfigureWindowRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"value_mask": u16,
    @"pad1": [2]u8,
};

pub const Circulate = extern enum(c_uint) {
    @"RaiseLowest" = 0,
    @"LowerHighest" = 1,
};

/// @brief CirculateWindowRequest
pub const CirculateWindowRequest = struct {
    @"major_opcode": u8,
    @"direction": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetGeometrycookie
pub const GetGeometrycookie = struct {
    sequence: c_uint,
};

/// @brief GetGeometryRequest
pub const GetGeometryRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
};

/// @brief GetGeometryReply
pub const GetGeometryReply = struct {
    @"response_type": u8,
    @"depth": u8,
    @"sequence": u16,
    @"length": u32,
    @"root": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"border_width": u16,
    @"pad0": [2]u8,
};

/// @brief QueryTreecookie
pub const QueryTreecookie = struct {
    sequence: c_uint,
};

/// @brief QueryTreeRequest
pub const QueryTreeRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief QueryTreeReply
pub const QueryTreeReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"root": xcb.WINDOW,
    @"parent": xcb.WINDOW,
    @"children_len": u16,
    @"pad1": [14]u8,
    @"children": []xcb.WINDOW,
};

/// @brief InternAtomcookie
pub const InternAtomcookie = struct {
    sequence: c_uint,
};

/// @brief InternAtomRequest
pub const InternAtomRequest = struct {
    @"major_opcode": u8,
    @"only_if_exists": u8,
    @"length": u16,
    @"name_len": u16,
    @"pad0": [2]u8,
    @"name": []const u8,
};

/// @brief InternAtomReply
pub const InternAtomReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"atom": xcb.ATOM,
};

/// @brief GetAtomNamecookie
pub const GetAtomNamecookie = struct {
    sequence: c_uint,
};

/// @brief GetAtomNameRequest
pub const GetAtomNameRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"atom": xcb.ATOM,
};

/// @brief GetAtomNameReply
pub const GetAtomNameReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"name_len": u16,
    @"pad1": [22]u8,
    @"name": []u8,
};

pub const PropMode = extern enum(c_uint) {
    /// Discard the previous property value and store the new data.
    @"Replace" = 0,
    /// Insert the new data before the beginning of existing data. The `format` must
    /// match existing property value. If the property is undefined, it is treated as
    /// defined with the correct type and format with zero-length data.
    @"Prepend" = 1,
    /// Insert the new data after the beginning of existing data. The `format` must
    /// match existing property value. If the property is undefined, it is treated as
    /// defined with the correct type and format with zero-length data.
    @"Append" = 2,
};

/// @brief ChangePropertyRequest
pub const ChangePropertyRequest = struct {
    @"major_opcode": u8,
    @"mode": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"format": u8,
    @"pad0": [3]u8,
    @"data_len": u32,
    @"data": []const u8,
};

/// @brief DeletePropertyRequest
pub const DeletePropertyRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"property": xcb.ATOM,
};

pub const GetPropertyType = extern enum(c_uint) {
    @"Any" = 0,
};

/// @brief GetPropertycookie
pub const GetPropertycookie = struct {
    sequence: c_uint,
};

/// @brief GetPropertyRequest
pub const GetPropertyRequest = struct {
    @"major_opcode": u8,
    @"delete": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"long_offset": u32,
    @"long_length": u32,
};

/// @brief GetPropertyReply
pub const GetPropertyReply = struct {
    @"response_type": u8,
    @"format": u8,
    @"sequence": u16,
    @"length": u32,
    @"type": xcb.ATOM,
    @"bytes_after": u32,
    @"value_len": u32,
    @"pad0": [12]u8,
    @"value": []u8,
};

/// @brief ListPropertiescookie
pub const ListPropertiescookie = struct {
    sequence: c_uint,
};

/// @brief ListPropertiesRequest
pub const ListPropertiesRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief ListPropertiesReply
pub const ListPropertiesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"atoms_len": u16,
    @"pad1": [22]u8,
    @"atoms": []xcb.ATOM,
};

/// @brief SetSelectionOwnerRequest
pub const SetSelectionOwnerRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"owner": xcb.WINDOW,
    @"selection": xcb.ATOM,
    @"time": xcb.TIMESTAMP,
};

/// @brief GetSelectionOwnercookie
pub const GetSelectionOwnercookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectionOwnerRequest
pub const GetSelectionOwnerRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"selection": xcb.ATOM,
};

/// @brief GetSelectionOwnerReply
pub const GetSelectionOwnerReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"owner": xcb.WINDOW,
};

/// @brief ConvertSelectionRequest
pub const ConvertSelectionRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"requestor": xcb.WINDOW,
    @"selection": xcb.ATOM,
    @"target": xcb.ATOM,
    @"property": xcb.ATOM,
    @"time": xcb.TIMESTAMP,
};

pub const SendEventDest = extern enum(c_uint) {
    @"PointerWindow" = 0,
    @"ItemFocus" = 1,
};

/// @brief SendEventRequest
pub const SendEventRequest = struct {
    @"major_opcode": u8,
    @"propagate": u8,
    @"length": u16,
    @"destination": xcb.WINDOW,
    @"event_mask": u32,
    @"event": [32]u8,
};

pub const GrabMode = extern enum(c_uint) {
    /// The state of the keyboard appears to freeze: No further keyboard events are
    /// generated by the server until the grabbing client issues a releasing
    /// `AllowEvents` request or until the keyboard grab is released.
    @"Sync" = 0,
    /// Keyboard event processing continues normally.
    @"Async" = 1,
};

pub const GrabStatus = extern enum(c_uint) {
    @"Success" = 0,
    @"AlreadyGrabbed" = 1,
    @"InvalidTime" = 2,
    @"NotViewable" = 3,
    @"Frozen" = 4,
};

pub const Cursor = extern enum(c_uint) {
    @"None" = 0,
};

/// @brief GrabPointercookie
pub const GrabPointercookie = struct {
    sequence: c_uint,
};

/// @brief GrabPointerRequest
pub const GrabPointerRequest = struct {
    @"major_opcode": u8,
    @"owner_events": u8,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"event_mask": u16,
    @"pointer_mode": u8,
    @"keyboard_mode": u8,
    @"confine_to": xcb.WINDOW,
    @"cursor": xcb.CURSOR,
    @"time": xcb.TIMESTAMP,
};

/// @brief GrabPointerReply
pub const GrabPointerReply = struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief UngrabPointerRequest
pub const UngrabPointerRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
};

pub const ButtonIndex = extern enum(c_uint) {
    /// Any of the following (or none):
    @"Any" = 0,
    /// The left mouse button.
    @"1" = 1,
    /// The right mouse button.
    @"2" = 2,
    /// The middle mouse button.
    @"3" = 3,
    /// Scroll wheel. TODO: direction?
    @"4" = 4,
    /// Scroll wheel. TODO: direction?
    @"5" = 5,
};

/// @brief GrabButtonRequest
pub const GrabButtonRequest = struct {
    @"major_opcode": u8,
    @"owner_events": u8,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"event_mask": u16,
    @"pointer_mode": u8,
    @"keyboard_mode": u8,
    @"confine_to": xcb.WINDOW,
    @"cursor": xcb.CURSOR,
    @"button": u8,
    @"pad0": u8,
    @"modifiers": u16,
};

/// @brief UngrabButtonRequest
pub const UngrabButtonRequest = struct {
    @"major_opcode": u8,
    @"button": u8,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"modifiers": u16,
    @"pad0": [2]u8,
};

/// @brief ChangeActivePointerGrabRequest
pub const ChangeActivePointerGrabRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cursor": xcb.CURSOR,
    @"time": xcb.TIMESTAMP,
    @"event_mask": u16,
    @"pad1": [2]u8,
};

/// @brief GrabKeyboardcookie
pub const GrabKeyboardcookie = struct {
    sequence: c_uint,
};

/// @brief GrabKeyboardRequest
pub const GrabKeyboardRequest = struct {
    @"major_opcode": u8,
    @"owner_events": u8,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"time": xcb.TIMESTAMP,
    @"pointer_mode": u8,
    @"keyboard_mode": u8,
    @"pad0": [2]u8,
};

/// @brief GrabKeyboardReply
pub const GrabKeyboardReply = struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief UngrabKeyboardRequest
pub const UngrabKeyboardRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
};

pub const Grab = extern enum(c_uint) {
    @"Any" = 0,
};

/// @brief GrabKeyRequest
pub const GrabKeyRequest = struct {
    @"major_opcode": u8,
    @"owner_events": u8,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"modifiers": u16,
    @"key": xcb.KEYCODE,
    @"pointer_mode": u8,
    @"keyboard_mode": u8,
    @"pad0": [3]u8,
};

/// @brief UngrabKeyRequest
pub const UngrabKeyRequest = struct {
    @"major_opcode": u8,
    @"key": xcb.KEYCODE,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"modifiers": u16,
    @"pad0": [2]u8,
};

pub const Allow = extern enum(c_uint) {
    /// For AsyncPointer, if the pointer is frozen by the client, pointer event
    /// processing continues normally. If the pointer is frozen twice by the client on
    /// behalf of two separate grabs, AsyncPointer thaws for both. AsyncPointer has no
    /// effect if the pointer is not frozen by the client, but the pointer need not be
    /// grabbed by the client.
    ///
    /// TODO: rewrite this in more understandable terms.
    @"AsyncPointer" = 0,
    /// For SyncPointer, if the pointer is frozen and actively grabbed by the client,
    /// pointer event processing continues normally until the next ButtonPress or
    /// ButtonRelease event is reported to the client, at which time the pointer again
    /// appears to freeze. However, if the reported event causes the pointer grab to be
    /// released, then the pointer does not freeze. SyncPointer has no effect if the
    /// pointer is not frozen by the client or if the pointer is not grabbed by the
    /// client.
    @"SyncPointer" = 1,
    /// For ReplayPointer, if the pointer is actively grabbed by the client and is
    /// frozen as the result of an event having been sent to the client (either from
    /// the activation of a GrabButton or from a previous AllowEvents with mode
    /// SyncPointer but not from a GrabPointer), then the pointer grab is released and
    /// that event is completely reprocessed, this time ignoring any passive grabs at
    /// or above (towards the root) the grab-window of the grab just released. The
    /// request has no effect if the pointer is not grabbed by the client or if the
    /// pointer is not frozen as the result of an event.
    @"ReplayPointer" = 2,
    /// For AsyncKeyboard, if the keyboard is frozen by the client, keyboard event
    /// processing continues normally. If the keyboard is frozen twice by the client on
    /// behalf of two separate grabs, AsyncKeyboard thaws for both. AsyncKeyboard has
    /// no effect if the keyboard is not frozen by the client, but the keyboard need
    /// not be grabbed by the client.
    @"AsyncKeyboard" = 3,
    /// For SyncKeyboard, if the keyboard is frozen and actively grabbed by the client,
    /// keyboard event processing continues normally until the next KeyPress or
    /// KeyRelease event is reported to the client, at which time the keyboard again
    /// appears to freeze. However, if the reported event causes the keyboard grab to
    /// be released, then the keyboard does not freeze. SyncKeyboard has no effect if
    /// the keyboard is not frozen by the client or if the keyboard is not grabbed by
    /// the client.
    @"SyncKeyboard" = 4,
    /// For ReplayKeyboard, if the keyboard is actively grabbed by the client and is
    /// frozen as the result of an event having been sent to the client (either from
    /// the activation of a GrabKey or from a previous AllowEvents with mode
    /// SyncKeyboard but not from a GrabKeyboard), then the keyboard grab is released
    /// and that event is completely reprocessed, this time ignoring any passive grabs
    /// at or above (towards the root) the grab-window of the grab just released. The
    /// request has no effect if the keyboard is not grabbed by the client or if the
    /// keyboard is not frozen as the result of an event.
    @"ReplayKeyboard" = 5,
    /// For AsyncBoth, if the pointer and the keyboard are frozen by the client, event
    /// processing for both devices continues normally. If a device is frozen twice by
    /// the client on behalf of two separate grabs, AsyncBoth thaws for both. AsyncBoth
    /// has no effect unless both pointer and keyboard are frozen by the client.
    @"AsyncBoth" = 6,
    /// For SyncBoth, if both pointer and keyboard are frozen by the client, event
    /// processing (for both devices) continues normally until the next ButtonPress,
    /// ButtonRelease, KeyPress, or KeyRelease event is reported to the client for a
    /// grabbed device (button event for the pointer, key event for the keyboard), at
    /// which time the devices again appear to freeze. However, if the reported event
    /// causes the grab to be released, then the devices do not freeze (but if the
    /// other device is still grabbed, then a subsequent event for it will still cause
    /// both devices to freeze). SyncBoth has no effect unless both pointer and
    /// keyboard are frozen by the client. If the pointer or keyboard is frozen twice
    /// by the client on behalf of two separate grabs, SyncBoth thaws for both (but a
    /// subsequent freeze for SyncBoth will only freeze each device once).
    @"SyncBoth" = 7,
};

/// @brief AllowEventsRequest
pub const AllowEventsRequest = struct {
    @"major_opcode": u8,
    @"mode": u8,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
};

/// @brief GrabServerRequest
pub const GrabServerRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief UngrabServerRequest
pub const UngrabServerRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief QueryPointercookie
pub const QueryPointercookie = struct {
    sequence: c_uint,
};

/// @brief QueryPointerRequest
pub const QueryPointerRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief QueryPointerReply
pub const QueryPointerReply = struct {
    @"response_type": u8,
    @"same_screen": u8,
    @"sequence": u16,
    @"length": u32,
    @"root": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"root_x": i16,
    @"root_y": i16,
    @"win_x": i16,
    @"win_y": i16,
    @"mask": u16,
    @"pad0": [2]u8,
};

/// @brief TIMECOORD
pub const TIMECOORD = struct {
    @"time": xcb.TIMESTAMP,
    @"x": i16,
    @"y": i16,
};

/// @brief GetMotionEventscookie
pub const GetMotionEventscookie = struct {
    sequence: c_uint,
};

/// @brief GetMotionEventsRequest
pub const GetMotionEventsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"start": xcb.TIMESTAMP,
    @"stop": xcb.TIMESTAMP,
};

/// @brief GetMotionEventsReply
pub const GetMotionEventsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"events_len": u32,
    @"pad1": [20]u8,
    @"events": []xcb.TIMECOORD,
};

/// @brief TranslateCoordinatescookie
pub const TranslateCoordinatescookie = struct {
    sequence: c_uint,
};

/// @brief TranslateCoordinatesRequest
pub const TranslateCoordinatesRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"src_window": xcb.WINDOW,
    @"dst_window": xcb.WINDOW,
    @"src_x": i16,
    @"src_y": i16,
};

/// @brief TranslateCoordinatesReply
pub const TranslateCoordinatesReply = struct {
    @"response_type": u8,
    @"same_screen": u8,
    @"sequence": u16,
    @"length": u32,
    @"child": xcb.WINDOW,
    @"dst_x": i16,
    @"dst_y": i16,
};

/// @brief WarpPointerRequest
pub const WarpPointerRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"src_window": xcb.WINDOW,
    @"dst_window": xcb.WINDOW,
    @"src_x": i16,
    @"src_y": i16,
    @"src_width": u16,
    @"src_height": u16,
    @"dst_x": i16,
    @"dst_y": i16,
};

pub const InputFocus = extern enum(c_uint) {
    /// The focus reverts to `XCB_NONE`, so no window will have the input focus.
    @"None" = 0,
    /// The focus reverts to `XCB_POINTER_ROOT` respectively. When the focus reverts,
    /// FocusIn and FocusOut events are generated, but the last-focus-change time is
    /// not changed.
    @"PointerRoot" = 1,
    /// The focus reverts to the parent (or closest viewable ancestor) and the new
    /// revert_to value is `XCB_INPUT_FOCUS_NONE`.
    @"Parent" = 2,
    /// NOT YET DOCUMENTED. Only relevant for the xinput extension.
    @"FollowKeyboard" = 3,
};

/// @brief SetInputFocusRequest
pub const SetInputFocusRequest = struct {
    @"major_opcode": u8,
    @"revert_to": u8,
    @"length": u16,
    @"focus": xcb.WINDOW,
    @"time": xcb.TIMESTAMP,
};

/// @brief GetInputFocuscookie
pub const GetInputFocuscookie = struct {
    sequence: c_uint,
};

/// @brief GetInputFocusRequest
pub const GetInputFocusRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief GetInputFocusReply
pub const GetInputFocusReply = struct {
    @"response_type": u8,
    @"revert_to": u8,
    @"sequence": u16,
    @"length": u32,
    @"focus": xcb.WINDOW,
};

/// @brief QueryKeymapcookie
pub const QueryKeymapcookie = struct {
    sequence: c_uint,
};

/// @brief QueryKeymapRequest
pub const QueryKeymapRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief QueryKeymapReply
pub const QueryKeymapReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"keys": [32]u8,
};

/// @brief OpenFontRequest
pub const OpenFontRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"fid": xcb.FONT,
    @"name_len": u16,
    @"pad1": [2]u8,
    @"name": []const u8,
};

/// @brief CloseFontRequest
pub const CloseFontRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"font": xcb.FONT,
};

pub const FontDraw = extern enum(c_uint) {
    @"LeftToRight" = 0,
    @"RightToLeft" = 1,
};

/// @brief FONTPROP
pub const FONTPROP = struct {
    @"name": xcb.ATOM,
    @"value": u32,
};

/// @brief CHARINFO
pub const CHARINFO = struct {
    @"left_side_bearing": i16,
    @"right_side_bearing": i16,
    @"character_width": i16,
    @"ascent": i16,
    @"descent": i16,
    @"attributes": u16,
};

/// @brief QueryFontcookie
pub const QueryFontcookie = struct {
    sequence: c_uint,
};

/// @brief QueryFontRequest
pub const QueryFontRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"font": xcb.FONTABLE,
};

/// @brief QueryFontReply
pub const QueryFontReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"min_bounds": xcb.CHARINFO,
    @"pad1": [4]u8,
    @"max_bounds": xcb.CHARINFO,
    @"pad2": [4]u8,
    @"min_char_or_byte2": u16,
    @"max_char_or_byte2": u16,
    @"default_char": u16,
    @"properties_len": u16,
    @"draw_direction": u8,
    @"min_byte1": u8,
    @"max_byte1": u8,
    @"all_chars_exist": u8,
    @"font_ascent": i16,
    @"font_descent": i16,
    @"char_infos_len": u32,
    @"properties": []xcb.FONTPROP,
    @"char_infos": []xcb.CHARINFO,
};

/// @brief QueryTextExtentscookie
pub const QueryTextExtentscookie = struct {
    sequence: c_uint,
};

/// @brief QueryTextExtentsRequest
pub const QueryTextExtentsRequest = struct {
    @"major_opcode": u8,
    @"odd_length": u8,
    @"length": u16,
    @"font": xcb.FONTABLE,
    @"string": []const xcb.CHAR2B,
};

/// @brief QueryTextExtentsReply
pub const QueryTextExtentsReply = struct {
    @"response_type": u8,
    @"draw_direction": u8,
    @"sequence": u16,
    @"length": u32,
    @"font_ascent": i16,
    @"font_descent": i16,
    @"overall_ascent": i16,
    @"overall_descent": i16,
    @"overall_width": i32,
    @"overall_left": i32,
    @"overall_right": i32,
};

/// @brief STR
pub const STR = struct {
    @"name_len": u8,
    @"name": []u8,
};

/// @brief ListFontscookie
pub const ListFontscookie = struct {
    sequence: c_uint,
};

/// @brief ListFontsRequest
pub const ListFontsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"max_names": u16,
    @"pattern_len": u16,
    @"pattern": []const u8,
};

/// @brief ListFontsReply
pub const ListFontsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"names_len": u16,
    @"pad1": [22]u8,
    @"names": []xcb.STR,
};

/// @brief ListFontsWithInfocookie
pub const ListFontsWithInfocookie = struct {
    sequence: c_uint,
};

/// @brief ListFontsWithInfoRequest
pub const ListFontsWithInfoRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"max_names": u16,
    @"pattern_len": u16,
    @"pattern": []const u8,
};

/// @brief ListFontsWithInfoReply
pub const ListFontsWithInfoReply = struct {
    @"response_type": u8,
    @"name_len": u8,
    @"sequence": u16,
    @"length": u32,
    @"min_bounds": xcb.CHARINFO,
    @"pad0": [4]u8,
    @"max_bounds": xcb.CHARINFO,
    @"pad1": [4]u8,
    @"min_char_or_byte2": u16,
    @"max_char_or_byte2": u16,
    @"default_char": u16,
    @"properties_len": u16,
    @"draw_direction": u8,
    @"min_byte1": u8,
    @"max_byte1": u8,
    @"all_chars_exist": u8,
    @"font_ascent": i16,
    @"font_descent": i16,
    @"replies_hint": u32,
    @"properties": []xcb.FONTPROP,
    @"name": []u8,
};

/// @brief SetFontPathRequest
pub const SetFontPathRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"font_qty": u16,
    @"pad1": [2]u8,
    @"font": []const xcb.STR,
};

/// @brief GetFontPathcookie
pub const GetFontPathcookie = struct {
    sequence: c_uint,
};

/// @brief GetFontPathRequest
pub const GetFontPathRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief GetFontPathReply
pub const GetFontPathReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"path_len": u16,
    @"pad1": [22]u8,
    @"path": []xcb.STR,
};

/// @brief CreatePixmapRequest
pub const CreatePixmapRequest = struct {
    @"major_opcode": u8,
    @"depth": u8,
    @"length": u16,
    @"pid": xcb.PIXMAP,
    @"drawable": xcb.DRAWABLE,
    @"width": u16,
    @"height": u16,
};

/// @brief FreePixmapRequest
pub const FreePixmapRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"pixmap": xcb.PIXMAP,
};

pub const GC = extern enum(c_uint) {
    /// TODO: Refer to GX
    @"Function" = 1,
    /// In graphics operations, given a source and destination pixel, the result is
    /// computed bitwise on corresponding bits of the pixels; that is, a Boolean
    /// operation is performed in each bit plane. The plane-mask restricts the
    /// operation to a subset of planes, so the result is:
    ///
    ///         ((src FUNC dst) AND plane-mask) OR (dst AND (NOT plane-mask))
    @"PlaneMask" = 2,
    /// Foreground colorpixel.
    @"Foreground" = 4,
    /// Background colorpixel.
    @"Background" = 8,
    /// The line-width is measured in pixels and can be greater than or equal to one, a wide line, or the
    /// special value zero, a thin line.
    @"LineWidth" = 16,
    /// The line-style defines which sections of a line are drawn:
    /// Solid                The full path of the line is drawn.
    /// DoubleDash           The full path of the line is drawn, but the even dashes are filled differently
    ///                      than the odd dashes (see fill-style), with Butt cap-style used where even and
    ///                      odd dashes meet.
    /// OnOffDash            Only the even dashes are drawn, and cap-style applies to all internal ends of
    ///                      the individual dashes (except NotLast is treated as Butt).
    @"LineStyle" = 32,
    /// The cap-style defines how the endpoints of a path are drawn:
    /// NotLast    The result is equivalent to Butt, except that for a line-width of zero the final
    ///            endpoint is not drawn.
    /// Butt       The result is square at the endpoint (perpendicular to the slope of the line)
    ///            with no projection beyond.
    /// Round      The result is a circular arc with its diameter equal to the line-width, centered
    ///            on the endpoint; it is equivalent to Butt for line-width zero.
    /// Projecting The result is square at the end, but the path continues beyond the endpoint for
    ///            a distance equal to half the line-width; it is equivalent to Butt for line-width
    ///            zero.
    @"CapStyle" = 64,
    /// The join-style defines how corners are drawn for wide lines:
    /// Miter               The outer edges of the two lines extend to meet at an angle. However, if the
    ///                     angle is less than 11 degrees, a Bevel join-style is used instead.
    /// Round               The result is a circular arc with a diameter equal to the line-width, centered
    ///                     on the joinpoint.
    /// Bevel               The result is Butt endpoint styles, and then the triangular notch is filled.
    @"JoinStyle" = 128,
    /// The fill-style defines the contents of the source for line, text, and fill requests. For all text and fill
    /// requests (for example, PolyText8, PolyText16, PolyFillRectangle, FillPoly, and PolyFillArc)
    /// as well as for line requests with line-style Solid, (for example, PolyLine, PolySegment,
    /// PolyRectangle, PolyArc) and for the even dashes for line requests with line-style OnOffDash
    /// or DoubleDash:
    /// Solid                     Foreground
    /// Tiled                     Tile
    /// OpaqueStippled            A tile with the same width and height as stipple but with background
    ///                           everywhere stipple has a zero and with foreground everywhere stipple
    ///                           has a one
    /// Stippled                  Foreground masked by stipple
    /// For the odd dashes for line requests with line-style DoubleDash:
    /// Solid                     Background
    /// Tiled                     Same as for even dashes
    /// OpaqueStippled            Same as for even dashes
    /// Stippled                  Background masked by stipple
    @"FillStyle" = 256,
    @"FillRule" = 512,
    /// The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
    /// dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
    /// the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
    /// specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
    /// origin of whatever destination drawable is specified in a graphics request.
    /// The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
    /// The stipple pixmap must have depth one and must have the same root as the gcontext (or a
    /// Match error results). For fill-style Stippled (but not fill-style
    /// OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
    /// additional clip mask to be ANDed with the clip-mask.
    /// Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
    /// others.
    @"Tile" = 1024,
    /// The tile/stipple represents an infinite two-dimensional plane with the tile/stipple replicated in all
    /// dimensions. When that plane is superimposed on the drawable for use in a graphics operation,
    /// the upper-left corner of some instance of the tile/stipple is at the coordinates within the drawable
    /// specified by the tile/stipple origin. The tile/stipple and clip origins are interpreted relative to the
    /// origin of whatever destination drawable is specified in a graphics request.
    /// The tile pixmap must have the same root and depth as the gcontext (or a Match error results).
    /// The stipple pixmap must have depth one and must have the same root as the gcontext (or a
    /// Match error results). For fill-style Stippled (but not fill-style
    /// OpaqueStippled), the stipple pattern is tiled in a single plane and acts as an
    /// additional clip mask to be ANDed with the clip-mask.
    /// Any size pixmap can be used for tiling or stippling, although some sizes may be faster to use than
    /// others.
    @"Stipple" = 2048,
    /// TODO
    @"TileStippleOriginX" = 4096,
    /// TODO
    @"TileStippleOriginY" = 8192,
    /// Which font to use for the `ImageText8` and `ImageText16` requests.
    @"Font" = 16384,
    /// For ClipByChildren, both source and destination windows are additionally
    /// clipped by all viewable InputOutput children. For IncludeInferiors, neither
    /// source nor destination window is
    /// clipped by inferiors. This will result in including subwindow contents in the source and drawing
    /// through subwindow boundaries of the destination. The use of IncludeInferiors with a source or
    /// destination window of one depth with mapped inferiors of differing depth is not illegal, but the
    /// semantics is undefined by the core protocol.
    @"SubwindowMode" = 32768,
    /// Whether ExposureEvents should be generated (1) or not (0).
    ///
    /// The default is 1.
    @"GraphicsExposures" = 65536,
    /// TODO
    @"ClipOriginX" = 131072,
    /// TODO
    @"ClipOriginY" = 262144,
    /// The clip-mask restricts writes to the destination drawable. Only pixels where the clip-mask has
    /// bits set to 1 are drawn. Pixels are not drawn outside the area covered by the clip-mask or where
    /// the clip-mask has bits set to 0. The clip-mask affects all graphics requests, but it does not clip
    /// sources. The clip-mask origin is interpreted relative to the origin of whatever destination drawable is specified in a graphics request. If a pixmap is specified as the clip-mask, it must have
    /// depth 1 and have the same root as the gcontext (or a Match error results). If clip-mask is None,
    /// then pixels are always drawn, regardless of the clip origin. The clip-mask can also be set with the
    /// SetClipRectangles request.
    @"ClipMask" = 524288,
    /// TODO
    @"DashOffset" = 1048576,
    /// TODO
    @"DashList" = 2097152,
    /// TODO
    @"ArcMode" = 4194304,
};

pub const GX = extern enum(c_uint) {
    @"clear" = 0,
    @"and" = 1,
    @"andReverse" = 2,
    @"copy" = 3,
    @"andInverted" = 4,
    @"noop" = 5,
    @"xor" = 6,
    @"or" = 7,
    @"nor" = 8,
    @"equiv" = 9,
    @"invert" = 10,
    @"orReverse" = 11,
    @"copyInverted" = 12,
    @"orInverted" = 13,
    @"nand" = 14,
    @"set" = 15,
};

pub const LineStyle = extern enum(c_uint) {
    @"Solid" = 0,
    @"OnOffDash" = 1,
    @"DoubleDash" = 2,
};

pub const CapStyle = extern enum(c_uint) {
    @"NotLast" = 0,
    @"Butt" = 1,
    @"Round" = 2,
    @"Projecting" = 3,
};

pub const JoinStyle = extern enum(c_uint) {
    @"Miter" = 0,
    @"Round" = 1,
    @"Bevel" = 2,
};

pub const FillStyle = extern enum(c_uint) {
    @"Solid" = 0,
    @"Tiled" = 1,
    @"Stippled" = 2,
    @"OpaqueStippled" = 3,
};

pub const FillRule = extern enum(c_uint) {
    @"EvenOdd" = 0,
    @"Winding" = 1,
};

pub const SubwindowMode = extern enum(c_uint) {
    @"ClipByChildren" = 0,
    @"IncludeInferiors" = 1,
};

pub const ArcMode = extern enum(c_uint) {
    @"Chord" = 0,
    @"PieSlice" = 1,
};

/// @brief CreateGCRequest
pub const CreateGCRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cid": xcb.GCONTEXT,
    @"drawable": xcb.DRAWABLE,
    @"value_mask": u32,
};

/// @brief ChangeGCRequest
pub const ChangeGCRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"gc": xcb.GCONTEXT,
    @"value_mask": u32,
};

/// @brief CopyGCRequest
pub const CopyGCRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"src_gc": xcb.GCONTEXT,
    @"dst_gc": xcb.GCONTEXT,
    @"value_mask": u32,
};

/// @brief SetDashesRequest
pub const SetDashesRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"gc": xcb.GCONTEXT,
    @"dash_offset": u16,
    @"dashes_len": u16,
    @"dashes": []const u8,
};

pub const ClipOrdering = extern enum(c_uint) {
    @"Unsorted" = 0,
    @"YSorted" = 1,
    @"YXSorted" = 2,
    @"YXBanded" = 3,
};

/// @brief SetClipRectanglesRequest
pub const SetClipRectanglesRequest = struct {
    @"major_opcode": u8,
    @"ordering": u8,
    @"length": u16,
    @"gc": xcb.GCONTEXT,
    @"clip_x_origin": i16,
    @"clip_y_origin": i16,
    @"rectangles": []const xcb.RECTANGLE,
};

/// @brief FreeGCRequest
pub const FreeGCRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"gc": xcb.GCONTEXT,
};

/// @brief ClearAreaRequest
pub const ClearAreaRequest = struct {
    @"major_opcode": u8,
    @"exposures": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
};

/// @brief CopyAreaRequest
pub const CopyAreaRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"src_drawable": xcb.DRAWABLE,
    @"dst_drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"src_x": i16,
    @"src_y": i16,
    @"dst_x": i16,
    @"dst_y": i16,
    @"width": u16,
    @"height": u16,
};

/// @brief CopyPlaneRequest
pub const CopyPlaneRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"src_drawable": xcb.DRAWABLE,
    @"dst_drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"src_x": i16,
    @"src_y": i16,
    @"dst_x": i16,
    @"dst_y": i16,
    @"width": u16,
    @"height": u16,
    @"bit_plane": u32,
};

pub const CoordMode = extern enum(c_uint) {
    /// Treats all coordinates as relative to the origin.
    @"Origin" = 0,
    /// Treats all coordinates after the first as relative to the previous coordinate.
    @"Previous" = 1,
};

/// @brief PolyPointRequest
pub const PolyPointRequest = struct {
    @"major_opcode": u8,
    @"coordinate_mode": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"points": []const xcb.POINT,
};

/// @brief PolyLineRequest
pub const PolyLineRequest = struct {
    @"major_opcode": u8,
    @"coordinate_mode": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"points": []const xcb.POINT,
};

/// @brief SEGMENT
pub const SEGMENT = struct {
    @"x1": i16,
    @"y1": i16,
    @"x2": i16,
    @"y2": i16,
};

/// @brief PolySegmentRequest
pub const PolySegmentRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"segments": []const xcb.SEGMENT,
};

/// @brief PolyRectangleRequest
pub const PolyRectangleRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"rectangles": []const xcb.RECTANGLE,
};

/// @brief PolyArcRequest
pub const PolyArcRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"arcs": []const xcb.ARC,
};

pub const PolyShape = extern enum(c_uint) {
    @"Complex" = 0,
    @"Nonconvex" = 1,
    @"Convex" = 2,
};

/// @brief FillPolyRequest
pub const FillPolyRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"shape": u8,
    @"coordinate_mode": u8,
    @"pad1": [2]u8,
    @"points": []const xcb.POINT,
};

/// @brief PolyFillRectangleRequest
pub const PolyFillRectangleRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"rectangles": []const xcb.RECTANGLE,
};

/// @brief PolyFillArcRequest
pub const PolyFillArcRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"arcs": []const xcb.ARC,
};

pub const ImageFormat = extern enum(c_uint) {
    @"XYBitmap" = 0,
    @"XYPixmap" = 1,
    @"ZPixmap" = 2,
};

/// @brief PutImageRequest
pub const PutImageRequest = struct {
    @"major_opcode": u8,
    @"format": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"width": u16,
    @"height": u16,
    @"dst_x": i16,
    @"dst_y": i16,
    @"left_pad": u8,
    @"depth": u8,
    @"pad0": [2]u8,
    @"data": []const u8,
};

/// @brief GetImagecookie
pub const GetImagecookie = struct {
    sequence: c_uint,
};

/// @brief GetImageRequest
pub const GetImageRequest = struct {
    @"major_opcode": u8,
    @"format": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"x": i16,
    @"y": i16,
    @"width": u16,
    @"height": u16,
    @"plane_mask": u32,
};

/// @brief GetImageReply
pub const GetImageReply = struct {
    @"response_type": u8,
    @"depth": u8,
    @"sequence": u16,
    @"length": u32,
    @"visual": xcb.VISUALID,
    @"pad0": [20]u8,
    @"data": []u8,
};

/// @brief PolyText8Request
pub const PolyText8Request = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"x": i16,
    @"y": i16,
    @"items": []const u8,
};

/// @brief PolyText16Request
pub const PolyText16Request = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"x": i16,
    @"y": i16,
    @"items": []const u8,
};

/// @brief ImageText8Request
pub const ImageText8Request = struct {
    @"major_opcode": u8,
    @"string_len": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"x": i16,
    @"y": i16,
    @"string": []const u8,
};

/// @brief ImageText16Request
pub const ImageText16Request = struct {
    @"major_opcode": u8,
    @"string_len": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"gc": xcb.GCONTEXT,
    @"x": i16,
    @"y": i16,
    @"string": []const xcb.CHAR2B,
};

pub const ColormapAlloc = extern enum(c_uint) {
    @"None" = 0,
    @"All" = 1,
};

/// @brief CreateColormapRequest
pub const CreateColormapRequest = struct {
    @"major_opcode": u8,
    @"alloc": u8,
    @"length": u16,
    @"mid": xcb.COLORMAP,
    @"window": xcb.WINDOW,
    @"visual": xcb.VISUALID,
};

/// @brief FreeColormapRequest
pub const FreeColormapRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
};

/// @brief CopyColormapAndFreeRequest
pub const CopyColormapAndFreeRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"mid": xcb.COLORMAP,
    @"src_cmap": xcb.COLORMAP,
};

/// @brief InstallColormapRequest
pub const InstallColormapRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
};

/// @brief UninstallColormapRequest
pub const UninstallColormapRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
};

/// @brief ListInstalledColormapscookie
pub const ListInstalledColormapscookie = struct {
    sequence: c_uint,
};

/// @brief ListInstalledColormapsRequest
pub const ListInstalledColormapsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief ListInstalledColormapsReply
pub const ListInstalledColormapsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"cmaps_len": u16,
    @"pad1": [22]u8,
    @"cmaps": []xcb.COLORMAP,
};

/// @brief AllocColorcookie
pub const AllocColorcookie = struct {
    sequence: c_uint,
};

/// @brief AllocColorRequest
pub const AllocColorRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"pad1": [2]u8,
};

/// @brief AllocColorReply
pub const AllocColorReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"pad1": [2]u8,
    @"pixel": u32,
};

/// @brief AllocNamedColorcookie
pub const AllocNamedColorcookie = struct {
    sequence: c_uint,
};

/// @brief AllocNamedColorRequest
pub const AllocNamedColorRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"name_len": u16,
    @"pad1": [2]u8,
    @"name": []const u8,
};

/// @brief AllocNamedColorReply
pub const AllocNamedColorReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pixel": u32,
    @"exact_red": u16,
    @"exact_green": u16,
    @"exact_blue": u16,
    @"visual_red": u16,
    @"visual_green": u16,
    @"visual_blue": u16,
};

/// @brief AllocColorCellscookie
pub const AllocColorCellscookie = struct {
    sequence: c_uint,
};

/// @brief AllocColorCellsRequest
pub const AllocColorCellsRequest = struct {
    @"major_opcode": u8,
    @"contiguous": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"colors": u16,
    @"planes": u16,
};

/// @brief AllocColorCellsReply
pub const AllocColorCellsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pixels_len": u16,
    @"masks_len": u16,
    @"pad1": [20]u8,
    @"pixels": []u32,
    @"masks": []u32,
};

/// @brief AllocColorPlanescookie
pub const AllocColorPlanescookie = struct {
    sequence: c_uint,
};

/// @brief AllocColorPlanesRequest
pub const AllocColorPlanesRequest = struct {
    @"major_opcode": u8,
    @"contiguous": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"colors": u16,
    @"reds": u16,
    @"greens": u16,
    @"blues": u16,
};

/// @brief AllocColorPlanesReply
pub const AllocColorPlanesReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"pixels_len": u16,
    @"pad1": [2]u8,
    @"red_mask": u32,
    @"green_mask": u32,
    @"blue_mask": u32,
    @"pad2": [8]u8,
    @"pixels": []u32,
};

/// @brief FreeColorsRequest
pub const FreeColorsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"plane_mask": u32,
    @"pixels": []const u32,
};

pub const ColorFlag = extern enum(c_uint) {
    @"Red" = 1,
    @"Green" = 2,
    @"Blue" = 4,
};

/// @brief COLORITEM
pub const COLORITEM = struct {
    @"pixel": u32,
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"flags": u8,
    @"pad0": u8,
};

/// @brief StoreColorsRequest
pub const StoreColorsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"items": []const xcb.COLORITEM,
};

/// @brief StoreNamedColorRequest
pub const StoreNamedColorRequest = struct {
    @"major_opcode": u8,
    @"flags": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"pixel": u32,
    @"name_len": u16,
    @"pad0": [2]u8,
    @"name": []const u8,
};

/// @brief RGB
pub const RGB = struct {
    @"red": u16,
    @"green": u16,
    @"blue": u16,
    @"pad0": [2]u8,
};

/// @brief QueryColorscookie
pub const QueryColorscookie = struct {
    sequence: c_uint,
};

/// @brief QueryColorsRequest
pub const QueryColorsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"pixels": []const u32,
};

/// @brief QueryColorsReply
pub const QueryColorsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"colors_len": u16,
    @"pad1": [22]u8,
    @"colors": []xcb.RGB,
};

/// @brief LookupColorcookie
pub const LookupColorcookie = struct {
    sequence: c_uint,
};

/// @brief LookupColorRequest
pub const LookupColorRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cmap": xcb.COLORMAP,
    @"name_len": u16,
    @"pad1": [2]u8,
    @"name": []const u8,
};

/// @brief LookupColorReply
pub const LookupColorReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"exact_red": u16,
    @"exact_green": u16,
    @"exact_blue": u16,
    @"visual_red": u16,
    @"visual_green": u16,
    @"visual_blue": u16,
};

pub const Pixmap = extern enum(c_uint) {
    @"None" = 0,
};

/// @brief CreateCursorRequest
pub const CreateCursorRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cid": xcb.CURSOR,
    @"source": xcb.PIXMAP,
    @"mask": xcb.PIXMAP,
    @"fore_red": u16,
    @"fore_green": u16,
    @"fore_blue": u16,
    @"back_red": u16,
    @"back_green": u16,
    @"back_blue": u16,
    @"x": u16,
    @"y": u16,
};

pub const Font = extern enum(c_uint) {
    @"None" = 0,
};

/// @brief CreateGlyphCursorRequest
pub const CreateGlyphCursorRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cid": xcb.CURSOR,
    @"source_font": xcb.FONT,
    @"mask_font": xcb.FONT,
    @"source_char": u16,
    @"mask_char": u16,
    @"fore_red": u16,
    @"fore_green": u16,
    @"fore_blue": u16,
    @"back_red": u16,
    @"back_green": u16,
    @"back_blue": u16,
};

/// @brief FreeCursorRequest
pub const FreeCursorRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cursor": xcb.CURSOR,
};

/// @brief RecolorCursorRequest
pub const RecolorCursorRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"cursor": xcb.CURSOR,
    @"fore_red": u16,
    @"fore_green": u16,
    @"fore_blue": u16,
    @"back_red": u16,
    @"back_green": u16,
    @"back_blue": u16,
};

pub const QueryShapeOf = extern enum(c_uint) {
    @"LargestCursor" = 0,
    @"FastestTile" = 1,
    @"FastestStipple" = 2,
};

/// @brief QueryBestSizecookie
pub const QueryBestSizecookie = struct {
    sequence: c_uint,
};

/// @brief QueryBestSizeRequest
pub const QueryBestSizeRequest = struct {
    @"major_opcode": u8,
    @"class": u8,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"width": u16,
    @"height": u16,
};

/// @brief QueryBestSizeReply
pub const QueryBestSizeReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"width": u16,
    @"height": u16,
};

/// @brief QueryExtensioncookie
pub const QueryExtensioncookie = struct {
    sequence: c_uint,
};

/// @brief QueryExtensionRequest
pub const QueryExtensionRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"name_len": u16,
    @"pad1": [2]u8,
    @"name": []const u8,
};

/// @brief QueryExtensionReply
pub const QueryExtensionReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"present": u8,
    @"major_opcode": u8,
    @"first_event": u8,
    @"first_error": u8,
};

/// @brief ListExtensionscookie
pub const ListExtensionscookie = struct {
    sequence: c_uint,
};

/// @brief ListExtensionsRequest
pub const ListExtensionsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief ListExtensionsReply
pub const ListExtensionsReply = struct {
    @"response_type": u8,
    @"names_len": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [24]u8,
    @"names": []xcb.STR,
};

/// @brief ChangeKeyboardMappingRequest
pub const ChangeKeyboardMappingRequest = struct {
    @"major_opcode": u8,
    @"keycode_count": u8,
    @"length": u16,
    @"first_keycode": xcb.KEYCODE,
    @"keysyms_per_keycode": u8,
    @"pad0": [2]u8,
    @"keysyms": []const xcb.KEYSYM,
};

/// @brief GetKeyboardMappingcookie
pub const GetKeyboardMappingcookie = struct {
    sequence: c_uint,
};

/// @brief GetKeyboardMappingRequest
pub const GetKeyboardMappingRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"first_keycode": xcb.KEYCODE,
    @"count": u8,
};

/// @brief GetKeyboardMappingReply
pub const GetKeyboardMappingReply = struct {
    @"response_type": u8,
    @"keysyms_per_keycode": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [24]u8,
    @"keysyms": []xcb.KEYSYM,
};

pub const KB = extern enum(c_uint) {
    @"KeyClickPercent" = 1,
    @"BellPercent" = 2,
    @"BellPitch" = 4,
    @"BellDuration" = 8,
    @"Led" = 16,
    @"LedMode" = 32,
    @"Key" = 64,
    @"AutoRepeatMode" = 128,
};

pub const LedMode = extern enum(c_uint) {
    @"Off" = 0,
    @"On" = 1,
};

pub const AutoRepeatMode = extern enum(c_uint) {
    @"Off" = 0,
    @"On" = 1,
    @"Default" = 2,
};

/// @brief ChangeKeyboardControlRequest
pub const ChangeKeyboardControlRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"value_mask": u32,
};

/// @brief GetKeyboardControlcookie
pub const GetKeyboardControlcookie = struct {
    sequence: c_uint,
};

/// @brief GetKeyboardControlRequest
pub const GetKeyboardControlRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief GetKeyboardControlReply
pub const GetKeyboardControlReply = struct {
    @"response_type": u8,
    @"global_auto_repeat": u8,
    @"sequence": u16,
    @"length": u32,
    @"led_mask": u32,
    @"key_click_percent": u8,
    @"bell_percent": u8,
    @"bell_pitch": u16,
    @"bell_duration": u16,
    @"pad0": [2]u8,
    @"auto_repeats": [32]u8,
};

/// @brief BellRequest
pub const BellRequest = struct {
    @"major_opcode": u8,
    @"percent": i8,
    @"length": u16,
};

/// @brief ChangePointerControlRequest
pub const ChangePointerControlRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"acceleration_numerator": i16,
    @"acceleration_denominator": i16,
    @"threshold": i16,
    @"do_acceleration": u8,
    @"do_threshold": u8,
};

/// @brief GetPointerControlcookie
pub const GetPointerControlcookie = struct {
    sequence: c_uint,
};

/// @brief GetPointerControlRequest
pub const GetPointerControlRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief GetPointerControlReply
pub const GetPointerControlReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"acceleration_numerator": u16,
    @"acceleration_denominator": u16,
    @"threshold": u16,
    @"pad1": [18]u8,
};

pub const Blanking = extern enum(c_uint) {
    @"NotPreferred" = 0,
    @"Preferred" = 1,
    @"Default" = 2,
};

pub const Exposures = extern enum(c_uint) {
    @"NotAllowed" = 0,
    @"Allowed" = 1,
    @"Default" = 2,
};

/// @brief SetScreenSaverRequest
pub const SetScreenSaverRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"timeout": i16,
    @"interval": i16,
    @"prefer_blanking": u8,
    @"allow_exposures": u8,
};

/// @brief GetScreenSavercookie
pub const GetScreenSavercookie = struct {
    sequence: c_uint,
};

/// @brief GetScreenSaverRequest
pub const GetScreenSaverRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief GetScreenSaverReply
pub const GetScreenSaverReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"timeout": u16,
    @"interval": u16,
    @"prefer_blanking": u8,
    @"allow_exposures": u8,
    @"pad1": [18]u8,
};

pub const HostMode = extern enum(c_uint) {
    @"Insert" = 0,
    @"Delete" = 1,
};

pub const Family = extern enum(c_uint) {
    @"Internet" = 0,
    @"DECnet" = 1,
    @"Chaos" = 2,
    @"ServerInterpreted" = 5,
    @"Internet6" = 6,
};

/// @brief ChangeHostsRequest
pub const ChangeHostsRequest = struct {
    @"major_opcode": u8,
    @"mode": u8,
    @"length": u16,
    @"family": u8,
    @"pad0": u8,
    @"address_len": u16,
    @"address": []const u8,
};

/// @brief HOST
pub const HOST = struct {
    @"family": u8,
    @"pad0": u8,
    @"address_len": u16,
    @"address": []u8,
};

/// @brief ListHostscookie
pub const ListHostscookie = struct {
    sequence: c_uint,
};

/// @brief ListHostsRequest
pub const ListHostsRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief ListHostsReply
pub const ListHostsReply = struct {
    @"response_type": u8,
    @"mode": u8,
    @"sequence": u16,
    @"length": u32,
    @"hosts_len": u16,
    @"pad0": [22]u8,
    @"hosts": []xcb.HOST,
};

pub const AccessControl = extern enum(c_uint) {
    @"Disable" = 0,
    @"Enable" = 1,
};

/// @brief SetAccessControlRequest
pub const SetAccessControlRequest = struct {
    @"major_opcode": u8,
    @"mode": u8,
    @"length": u16,
};

pub const CloseDown = extern enum(c_uint) {
    @"DestroyAll" = 0,
    @"RetainPermanent" = 1,
    @"RetainTemporary" = 2,
};

/// @brief SetCloseDownModeRequest
pub const SetCloseDownModeRequest = struct {
    @"major_opcode": u8,
    @"mode": u8,
    @"length": u16,
};

pub const Kill = extern enum(c_uint) {
    @"AllTemporary" = 0,
};

/// @brief KillClientRequest
pub const KillClientRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"resource": u32,
};

/// @brief RotatePropertiesRequest
pub const RotatePropertiesRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"atoms_len": u16,
    @"delta": i16,
    @"atoms": []const xcb.ATOM,
};

pub const ScreenSaver = extern enum(c_uint) {
    @"Reset" = 0,
    @"Active" = 1,
};

/// @brief ForceScreenSaverRequest
pub const ForceScreenSaverRequest = struct {
    @"major_opcode": u8,
    @"mode": u8,
    @"length": u16,
};

pub const MappingStatus = extern enum(c_uint) {
    @"Success" = 0,
    @"Busy" = 1,
    @"Failure" = 2,
};

/// @brief SetPointerMappingcookie
pub const SetPointerMappingcookie = struct {
    sequence: c_uint,
};

/// @brief SetPointerMappingRequest
pub const SetPointerMappingRequest = struct {
    @"major_opcode": u8,
    @"map_len": u8,
    @"length": u16,
    @"map": []const u8,
};

/// @brief SetPointerMappingReply
pub const SetPointerMappingReply = struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief GetPointerMappingcookie
pub const GetPointerMappingcookie = struct {
    sequence: c_uint,
};

/// @brief GetPointerMappingRequest
pub const GetPointerMappingRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief GetPointerMappingReply
pub const GetPointerMappingReply = struct {
    @"response_type": u8,
    @"map_len": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [24]u8,
    @"map": []u8,
};

pub const MapIndex = extern enum(c_uint) {
    @"Shift" = 0,
    @"Lock" = 1,
    @"Control" = 2,
    @"1" = 3,
    @"2" = 4,
    @"3" = 5,
    @"4" = 6,
    @"5" = 7,
};

/// @brief SetModifierMappingcookie
pub const SetModifierMappingcookie = struct {
    sequence: c_uint,
};

/// @brief SetModifierMappingRequest
pub const SetModifierMappingRequest = struct {
    @"major_opcode": u8,
    @"keycodes_per_modifier": u8,
    @"length": u16,
    @"keycodes": []const xcb.KEYCODE,
};

/// @brief SetModifierMappingReply
pub const SetModifierMappingReply = struct {
    @"response_type": u8,
    @"status": u8,
    @"sequence": u16,
    @"length": u32,
};

/// @brief GetModifierMappingcookie
pub const GetModifierMappingcookie = struct {
    sequence: c_uint,
};

/// @brief GetModifierMappingRequest
pub const GetModifierMappingRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

/// @brief GetModifierMappingReply
pub const GetModifierMappingReply = struct {
    @"response_type": u8,
    @"keycodes_per_modifier": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [24]u8,
    @"keycodes": []xcb.KEYCODE,
};

/// @brief NoOperationRequest
pub const NoOperationRequest = struct {
    @"major_opcode": u8,
    @"pad0": u8,
    @"length": u16,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
