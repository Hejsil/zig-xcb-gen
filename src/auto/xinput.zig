//!
//! This file generated automatically from xinput.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XInputExtension", .global_id = 0 };

pub const EventClass = u32;

pub const KeyCode = u8;

pub const DeviceId = u16;

pub const FP1616 = i32;

/// @brief FP3232
pub const FP3232 = extern struct {
    @"integral": i32,
    @"frac": u32,
};

/// @brief GetExtensionVersioncookie
pub const GetExtensionVersioncookie = struct {
    sequence: c_uint,
};

/// @brief GetExtensionVersionRequest
pub const GetExtensionVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"name_len": u16,
    @"pad0": [2]u8,
    @"name": [*]u8,
};

/// @brief GetExtensionVersionReply
pub const GetExtensionVersionReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"server_major": u16,
    @"server_minor": u16,
    @"present": u8,
    @"pad0": [19]u8,
};

pub const DeviceUse = extern enum(c_uint) {
    @"IsXPointer" = 0,
    @"IsXKeyboard" = 1,
    @"IsXExtensionDevice" = 2,
    @"IsXExtensionKeyboard" = 3,
    @"IsXExtensionPointer" = 4,
};

pub const InputClass = extern enum(c_uint) {
    @"Key" = 0,
    @"Button" = 1,
    @"Valuator" = 2,
    @"Feedback" = 3,
    @"Proximity" = 4,
    @"Focus" = 5,
    @"Other" = 6,
};

pub const ValuatorMode = extern enum(c_uint) {
    @"Relative" = 0,
    @"Absolute" = 1,
};

/// @brief DeviceInfo
pub const DeviceInfo = extern struct {
    @"device_type": xcb.ATOM,
    @"device_id": u8,
    @"num_class_info": u8,
    @"device_use": u8,
    @"pad0": u8,
};

/// @brief KeyInfo
pub const KeyInfo = extern struct {
    @"class_id": u8,
    @"len": u8,
    @"min_keycode": xcb.input.KeyCode,
    @"max_keycode": xcb.input.KeyCode,
    @"num_keys": u16,
    @"pad0": [2]u8,
};

/// @brief ButtonInfo
pub const ButtonInfo = extern struct {
    @"class_id": u8,
    @"len": u8,
    @"num_buttons": u16,
};

/// @brief AxisInfo
pub const AxisInfo = extern struct {
    @"resolution": u32,
    @"minimum": i32,
    @"maximum": i32,
};

/// @brief ValuatorInfo
pub const ValuatorInfo = extern struct {
    @"class_id": u8,
    @"len": u8,
    @"axes_len": u8,
    @"mode": u8,
    @"motion_size": u32,
    @"axes": [*]xcb.input.AxisInfo,
};

/// @brief InputInfo
pub const InputInfo = extern struct {
    @"class_id": u8,
    @"len": u8,
};

/// @brief DeviceName
pub const DeviceName = extern struct {
    @"len": u8,
    @"string": [*]u8,
};

/// @brief ListInputDevicescookie
pub const ListInputDevicescookie = struct {
    sequence: c_uint,
};

/// @brief ListInputDevicesRequest
pub const ListInputDevicesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
};

/// @brief ListInputDevicesReply
pub const ListInputDevicesReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"devices_len": u8,
    @"pad0": [23]u8,
    @"devices": [*]xcb.input.DeviceInfo,
    @"infos": [*]xcb.input.InputInfo,
    @"names": [*]xcb.STR,
};

/// @brief InputClassInfo
pub const InputClassInfo = extern struct {
    @"class_id": u8,
    @"event_type_base": u8,
};

/// @brief OpenDevicecookie
pub const OpenDevicecookie = struct {
    sequence: c_uint,
};

/// @brief OpenDeviceRequest
pub const OpenDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief OpenDeviceReply
pub const OpenDeviceReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_classes": u8,
    @"pad0": [23]u8,
    @"class_info": [*]xcb.input.InputClassInfo,
};

/// @brief CloseDeviceRequest
pub const CloseDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief SetDeviceModecookie
pub const SetDeviceModecookie = struct {
    sequence: c_uint,
};

/// @brief SetDeviceModeRequest
pub const SetDeviceModeRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"device_id": u8,
    @"mode": u8,
    @"pad0": [2]u8,
};

/// @brief SetDeviceModeReply
pub const SetDeviceModeReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief SelectExtensionEventRequest
pub const SelectExtensionEventRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"num_classes": u16,
    @"pad0": [2]u8,
    @"classes": [*]xcb.input.EventClass,
};

/// @brief GetSelectedExtensionEventscookie
pub const GetSelectedExtensionEventscookie = struct {
    sequence: c_uint,
};

/// @brief GetSelectedExtensionEventsRequest
pub const GetSelectedExtensionEventsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetSelectedExtensionEventsReply
pub const GetSelectedExtensionEventsReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_this_classes": u16,
    @"num_all_classes": u16,
    @"pad0": [20]u8,
    @"this_classes": [*]xcb.input.EventClass,
    @"all_classes": [*]xcb.input.EventClass,
};

pub const PropagateMode = extern enum(c_uint) {
    @"AddToList" = 0,
    @"DeleteFromList" = 1,
};

/// @brief ChangeDeviceDontPropagateListRequest
pub const ChangeDeviceDontPropagateListRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"num_classes": u16,
    @"mode": u8,
    @"pad0": u8,
    @"classes": [*]xcb.input.EventClass,
};

/// @brief GetDeviceDontPropagateListcookie
pub const GetDeviceDontPropagateListcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceDontPropagateListRequest
pub const GetDeviceDontPropagateListRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief GetDeviceDontPropagateListReply
pub const GetDeviceDontPropagateListReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_classes": u16,
    @"pad0": [22]u8,
    @"classes": [*]xcb.input.EventClass,
};

/// @brief DeviceTimeCoord
pub const DeviceTimeCoord = extern struct {
    @"time": xcb.TIMESTAMP,
    @"axisvalues": [*]i32,
};

/// @brief GetDeviceMotionEventscookie
pub const GetDeviceMotionEventscookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceMotionEventsRequest
pub const GetDeviceMotionEventsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"start": xcb.TIMESTAMP,
    @"stop": xcb.TIMESTAMP,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief GetDeviceMotionEventsReply
pub const GetDeviceMotionEventsReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_events": u32,
    @"num_axes": u8,
    @"device_mode": u8,
    @"pad0": [18]u8,
    @"events": [*]xcb.input.DeviceTimeCoord,
};

/// @brief ChangeKeyboardDevicecookie
pub const ChangeKeyboardDevicecookie = struct {
    sequence: c_uint,
};

/// @brief ChangeKeyboardDeviceRequest
pub const ChangeKeyboardDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief ChangeKeyboardDeviceReply
pub const ChangeKeyboardDeviceReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief ChangePointerDevicecookie
pub const ChangePointerDevicecookie = struct {
    sequence: c_uint,
};

/// @brief ChangePointerDeviceRequest
pub const ChangePointerDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"x_axis": u8,
    @"y_axis": u8,
    @"device_id": u8,
    @"pad0": u8,
};

/// @brief ChangePointerDeviceReply
pub const ChangePointerDeviceReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief GrabDevicecookie
pub const GrabDevicecookie = struct {
    sequence: c_uint,
};

/// @brief GrabDeviceRequest
pub const GrabDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"time": xcb.TIMESTAMP,
    @"num_classes": u16,
    @"this_device_mode": u8,
    @"other_device_mode": u8,
    @"owner_events": u8,
    @"device_id": u8,
    @"pad0": [2]u8,
    @"classes": [*]xcb.input.EventClass,
};

/// @brief GrabDeviceReply
pub const GrabDeviceReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief UngrabDeviceRequest
pub const UngrabDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
    @"device_id": u8,
    @"pad0": [3]u8,
};

pub const ModifierDevice = extern enum(c_uint) {
    @"UseXKeyboard" = 255,
};

/// @brief GrabDeviceKeyRequest
pub const GrabDeviceKeyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"num_classes": u16,
    @"modifiers": u16,
    @"modifier_device": u8,
    @"grabbed_device": u8,
    @"key": u8,
    @"this_device_mode": u8,
    @"other_device_mode": u8,
    @"owner_events": u8,
    @"pad0": [2]u8,
    @"classes": [*]xcb.input.EventClass,
};

/// @brief UngrabDeviceKeyRequest
pub const UngrabDeviceKeyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"grabWindow": xcb.WINDOW,
    @"modifiers": u16,
    @"modifier_device": u8,
    @"key": u8,
    @"grabbed_device": u8,
};

/// @brief GrabDeviceButtonRequest
pub const GrabDeviceButtonRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"grabbed_device": u8,
    @"modifier_device": u8,
    @"num_classes": u16,
    @"modifiers": u16,
    @"this_device_mode": u8,
    @"other_device_mode": u8,
    @"button": u8,
    @"owner_events": u8,
    @"pad0": [2]u8,
    @"classes": [*]xcb.input.EventClass,
};

/// @brief UngrabDeviceButtonRequest
pub const UngrabDeviceButtonRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"modifiers": u16,
    @"modifier_device": u8,
    @"button": u8,
    @"grabbed_device": u8,
    @"pad0": [3]u8,
};

pub const DeviceInputMode = extern enum(c_uint) {
    @"AsyncThisDevice" = 0,
    @"SyncThisDevice" = 1,
    @"ReplayThisDevice" = 2,
    @"AsyncOtherDevices" = 3,
    @"AsyncAll" = 4,
    @"SyncAll" = 5,
};

/// @brief AllowDeviceEventsRequest
pub const AllowDeviceEventsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
    @"mode": u8,
    @"device_id": u8,
    @"pad0": [2]u8,
};

/// @brief GetDeviceFocuscookie
pub const GetDeviceFocuscookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceFocusRequest
pub const GetDeviceFocusRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 20,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief GetDeviceFocusReply
pub const GetDeviceFocusReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"focus": xcb.WINDOW,
    @"time": xcb.TIMESTAMP,
    @"revert_to": u8,
    @"pad0": [15]u8,
};

/// @brief SetDeviceFocusRequest
pub const SetDeviceFocusRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
    @"focus": xcb.WINDOW,
    @"time": xcb.TIMESTAMP,
    @"revert_to": u8,
    @"device_id": u8,
    @"pad0": [2]u8,
};

pub const FeedbackClass = extern enum(c_uint) {
    @"Keyboard" = 0,
    @"Pointer" = 1,
    @"String" = 2,
    @"Integer" = 3,
    @"Led" = 4,
    @"Bell" = 5,
};

/// @brief KbdFeedbackState
pub const KbdFeedbackState = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"pitch": u16,
    @"duration": u16,
    @"led_mask": u32,
    @"led_values": u32,
    @"global_auto_repeat": u8,
    @"click": u8,
    @"percent": u8,
    @"pad0": u8,
    @"auto_repeats": [32]u8,
};

/// @brief PtrFeedbackState
pub const PtrFeedbackState = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"pad0": [2]u8,
    @"accel_num": u16,
    @"accel_denom": u16,
    @"threshold": u16,
};

/// @brief IntegerFeedbackState
pub const IntegerFeedbackState = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"resolution": u32,
    @"min_value": i32,
    @"max_value": i32,
};

/// @brief StringFeedbackState
pub const StringFeedbackState = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"max_symbols": u16,
    @"num_keysyms": u16,
    @"keysyms": [*]xcb.KEYSYM,
};

/// @brief BellFeedbackState
pub const BellFeedbackState = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"percent": u8,
    @"pad0": [3]u8,
    @"pitch": u16,
    @"duration": u16,
};

/// @brief LedFeedbackState
pub const LedFeedbackState = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"led_mask": u32,
    @"led_values": u32,
};

/// @brief FeedbackState
pub const FeedbackState = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
};

/// @brief GetFeedbackControlcookie
pub const GetFeedbackControlcookie = struct {
    sequence: c_uint,
};

/// @brief GetFeedbackControlRequest
pub const GetFeedbackControlRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief GetFeedbackControlReply
pub const GetFeedbackControlReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_feedbacks": u16,
    @"pad0": [22]u8,
    @"feedbacks": [*]xcb.input.FeedbackState,
};

/// @brief KbdFeedbackCtl
pub const KbdFeedbackCtl = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"key": xcb.input.KeyCode,
    @"auto_repeat_mode": u8,
    @"key_click_percent": i8,
    @"bell_percent": i8,
    @"bell_pitch": i16,
    @"bell_duration": i16,
    @"led_mask": u32,
    @"led_values": u32,
};

/// @brief PtrFeedbackCtl
pub const PtrFeedbackCtl = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"pad0": [2]u8,
    @"num": i16,
    @"denom": i16,
    @"threshold": i16,
};

/// @brief IntegerFeedbackCtl
pub const IntegerFeedbackCtl = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"int_to_display": i32,
};

/// @brief StringFeedbackCtl
pub const StringFeedbackCtl = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"pad0": [2]u8,
    @"num_keysyms": u16,
    @"keysyms": [*]xcb.KEYSYM,
};

/// @brief BellFeedbackCtl
pub const BellFeedbackCtl = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"percent": i8,
    @"pad0": [3]u8,
    @"pitch": i16,
    @"duration": i16,
};

/// @brief LedFeedbackCtl
pub const LedFeedbackCtl = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
    @"led_mask": u32,
    @"led_values": u32,
};

/// @brief FeedbackCtl
pub const FeedbackCtl = extern struct {
    @"class_id": u8,
    @"feedback_id": u8,
    @"len": u16,
};

pub const ChangeFeedbackControlMask = extern enum(c_uint) {
    @"KeyClickPercent" = 1,
    @"Percent" = 2,
    @"Pitch" = 4,
    @"Duration" = 8,
    @"Led" = 16,
    @"LedMode" = 32,
    @"Key" = 64,
    @"AutoRepeatMode" = 128,
    @"String" = 1,
    @"Integer" = 1,
    @"AccelNum" = 1,
    @"AccelDenom" = 2,
    @"Threshold" = 4,
};

/// @brief ChangeFeedbackControlRequest
pub const ChangeFeedbackControlRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 23,
    @"length": u16,
    @"mask": u32,
    @"device_id": u8,
    @"feedback_id": u8,
    @"pad0": [2]u8,
};

/// @brief GetDeviceKeyMappingcookie
pub const GetDeviceKeyMappingcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceKeyMappingRequest
pub const GetDeviceKeyMappingRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 24,
    @"length": u16,
    @"device_id": u8,
    @"first_keycode": xcb.input.KeyCode,
    @"count": u8,
    @"pad0": u8,
};

/// @brief GetDeviceKeyMappingReply
pub const GetDeviceKeyMappingReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"keysyms_per_keycode": u8,
    @"pad0": [23]u8,
    @"keysyms": [*]xcb.KEYSYM,
};

/// @brief ChangeDeviceKeyMappingRequest
pub const ChangeDeviceKeyMappingRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 25,
    @"length": u16,
    @"device_id": u8,
    @"first_keycode": xcb.input.KeyCode,
    @"keysyms_per_keycode": u8,
    @"keycode_count": u8,
    @"keysyms": [*]xcb.KEYSYM,
};

/// @brief GetDeviceModifierMappingcookie
pub const GetDeviceModifierMappingcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceModifierMappingRequest
pub const GetDeviceModifierMappingRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 26,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief GetDeviceModifierMappingReply
pub const GetDeviceModifierMappingReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"keycodes_per_modifier": u8,
    @"pad0": [23]u8,
    @"keymaps": [*]u8,
};

/// @brief SetDeviceModifierMappingcookie
pub const SetDeviceModifierMappingcookie = struct {
    sequence: c_uint,
};

/// @brief SetDeviceModifierMappingRequest
pub const SetDeviceModifierMappingRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 27,
    @"length": u16,
    @"device_id": u8,
    @"keycodes_per_modifier": u8,
    @"pad0": [2]u8,
    @"keymaps": [*]u8,
};

/// @brief SetDeviceModifierMappingReply
pub const SetDeviceModifierMappingReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief GetDeviceButtonMappingcookie
pub const GetDeviceButtonMappingcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceButtonMappingRequest
pub const GetDeviceButtonMappingRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 28,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief GetDeviceButtonMappingReply
pub const GetDeviceButtonMappingReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"map_size": u8,
    @"pad0": [23]u8,
    @"map": [*]u8,
};

/// @brief SetDeviceButtonMappingcookie
pub const SetDeviceButtonMappingcookie = struct {
    sequence: c_uint,
};

/// @brief SetDeviceButtonMappingRequest
pub const SetDeviceButtonMappingRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 29,
    @"length": u16,
    @"device_id": u8,
    @"map_size": u8,
    @"pad0": [2]u8,
    @"map": [*]u8,
};

/// @brief SetDeviceButtonMappingReply
pub const SetDeviceButtonMappingReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief KeyState
pub const KeyState = extern struct {
    @"class_id": u8,
    @"len": u8,
    @"num_keys": u8,
    @"pad0": u8,
    @"keys": [32]u8,
};

/// @brief ButtonState
pub const ButtonState = extern struct {
    @"class_id": u8,
    @"len": u8,
    @"num_buttons": u8,
    @"pad0": u8,
    @"buttons": [32]u8,
};

pub const ValuatorStateModeMask = extern enum(c_uint) {
    @"DeviceModeAbsolute" = 1,
    @"OutOfProximity" = 2,
};

/// @brief ValuatorState
pub const ValuatorState = extern struct {
    @"class_id": u8,
    @"len": u8,
    @"num_valuators": u8,
    @"mode": u8,
    @"valuators": [*]i32,
};

/// @brief InputState
pub const InputState = extern struct {
    @"class_id": u8,
    @"len": u8,
};

/// @brief QueryDeviceStatecookie
pub const QueryDeviceStatecookie = struct {
    sequence: c_uint,
};

/// @brief QueryDeviceStateRequest
pub const QueryDeviceStateRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 30,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief QueryDeviceStateReply
pub const QueryDeviceStateReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_classes": u8,
    @"pad0": [23]u8,
    @"classes": [*]xcb.input.InputState,
};

/// @brief SendExtensionEventRequest
pub const SendExtensionEventRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 31,
    @"length": u16,
    @"destination": xcb.WINDOW,
    @"device_id": u8,
    @"propagate": u8,
    @"num_classes": u16,
    @"num_events": u8,
    @"pad0": [3]u8,
    @"events": [*]u8,
    @"classes": [*]xcb.input.EventClass,
};

/// @brief DeviceBellRequest
pub const DeviceBellRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 32,
    @"length": u16,
    @"device_id": u8,
    @"feedback_id": u8,
    @"feedback_class": u8,
    @"percent": i8,
};

/// @brief SetDeviceValuatorscookie
pub const SetDeviceValuatorscookie = struct {
    sequence: c_uint,
};

/// @brief SetDeviceValuatorsRequest
pub const SetDeviceValuatorsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 33,
    @"length": u16,
    @"device_id": u8,
    @"first_valuator": u8,
    @"num_valuators": u8,
    @"pad0": u8,
    @"valuators": [*]i32,
};

/// @brief SetDeviceValuatorsReply
pub const SetDeviceValuatorsReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

pub const DeviceControl = extern enum(c_uint) {
    @"resolution" = 1,
    @"abs_calib" = 2,
    @"core" = 3,
    @"enable" = 4,
    @"abs_area" = 5,
};

/// @brief DeviceResolutionState
pub const DeviceResolutionState = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"num_valuators": u32,
    @"resolution_values": [*]u32,
    @"resolution_min": [*]u32,
    @"resolution_max": [*]u32,
};

/// @brief DeviceAbsCalibState
pub const DeviceAbsCalibState = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"min_x": i32,
    @"max_x": i32,
    @"min_y": i32,
    @"max_y": i32,
    @"flip_x": u32,
    @"flip_y": u32,
    @"rotation": u32,
    @"button_threshold": u32,
};

/// @brief DeviceAbsAreaState
pub const DeviceAbsAreaState = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"offset_x": u32,
    @"offset_y": u32,
    @"width": u32,
    @"height": u32,
    @"screen": u32,
    @"following": u32,
};

/// @brief DeviceCoreState
pub const DeviceCoreState = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"status": u8,
    @"iscore": u8,
    @"pad0": [2]u8,
};

/// @brief DeviceEnableState
pub const DeviceEnableState = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"enable": u8,
    @"pad0": [3]u8,
};

/// @brief DeviceState
pub const DeviceState = extern struct {
    @"control_id": u16,
    @"len": u16,
};

/// @brief GetDeviceControlcookie
pub const GetDeviceControlcookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceControlRequest
pub const GetDeviceControlRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 34,
    @"length": u16,
    @"control_id": u16,
    @"device_id": u8,
    @"pad0": u8,
};

/// @brief GetDeviceControlReply
pub const GetDeviceControlReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief DeviceResolutionCtl
pub const DeviceResolutionCtl = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"first_valuator": u8,
    @"num_valuators": u8,
    @"pad0": [2]u8,
    @"resolution_values": [*]u32,
};

/// @brief DeviceAbsCalibCtl
pub const DeviceAbsCalibCtl = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"min_x": i32,
    @"max_x": i32,
    @"min_y": i32,
    @"max_y": i32,
    @"flip_x": u32,
    @"flip_y": u32,
    @"rotation": u32,
    @"button_threshold": u32,
};

/// @brief DeviceAbsAreaCtrl
pub const DeviceAbsAreaCtrl = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"offset_x": u32,
    @"offset_y": u32,
    @"width": i32,
    @"height": i32,
    @"screen": i32,
    @"following": u32,
};

/// @brief DeviceCoreCtrl
pub const DeviceCoreCtrl = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"status": u8,
    @"pad0": [3]u8,
};

/// @brief DeviceEnableCtrl
pub const DeviceEnableCtrl = extern struct {
    @"control_id": u16,
    @"len": u16,
    @"enable": u8,
    @"pad0": [3]u8,
};

/// @brief DeviceCtl
pub const DeviceCtl = extern struct {
    @"control_id": u16,
    @"len": u16,
};

/// @brief ChangeDeviceControlcookie
pub const ChangeDeviceControlcookie = struct {
    sequence: c_uint,
};

/// @brief ChangeDeviceControlRequest
pub const ChangeDeviceControlRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 35,
    @"length": u16,
    @"control_id": u16,
    @"device_id": u8,
    @"pad0": u8,
};

/// @brief ChangeDeviceControlReply
pub const ChangeDeviceControlReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad0": [23]u8,
};

/// @brief ListDevicePropertiescookie
pub const ListDevicePropertiescookie = struct {
    sequence: c_uint,
};

/// @brief ListDevicePropertiesRequest
pub const ListDevicePropertiesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 36,
    @"length": u16,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief ListDevicePropertiesReply
pub const ListDevicePropertiesReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_atoms": u16,
    @"pad0": [22]u8,
    @"atoms": [*]xcb.ATOM,
};

pub const PropertyFormat = extern enum(c_uint) {
    @"8Bits" = 8,
    @"16Bits" = 16,
    @"32Bits" = 32,
};

/// @brief ChangeDevicePropertyRequest
pub const ChangeDevicePropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 37,
    @"length": u16,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"device_id": u8,
    @"format": u8,
    @"mode": u8,
    @"pad0": u8,
    @"num_items": u32,
};

/// @brief DeleteDevicePropertyRequest
pub const DeleteDevicePropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 38,
    @"length": u16,
    @"property": xcb.ATOM,
    @"device_id": u8,
    @"pad0": [3]u8,
};

/// @brief GetDevicePropertycookie
pub const GetDevicePropertycookie = struct {
    sequence: c_uint,
};

/// @brief GetDevicePropertyRequest
pub const GetDevicePropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 39,
    @"length": u16,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"offset": u32,
    @"len": u32,
    @"device_id": u8,
    @"delete": u8,
    @"pad0": [2]u8,
};

/// @brief GetDevicePropertyReply
pub const GetDevicePropertyReply = extern struct {
    @"response_type": u8,
    @"xi_reply_type": u8,
    @"sequence": u16,
    @"length": u32,
    @"type": xcb.ATOM,
    @"bytes_after": u32,
    @"num_items": u32,
    @"format": u8,
    @"device_id": u8,
    @"pad0": [10]u8,
};

pub const Device = extern enum(c_uint) {
    @"All" = 0,
    @"AllMaster" = 1,
};

/// @brief GroupInfo
pub const GroupInfo = extern struct {
    @"base": u8,
    @"latched": u8,
    @"locked": u8,
    @"effective": u8,
};

/// @brief ModifierInfo
pub const ModifierInfo = extern struct {
    @"base": u32,
    @"latched": u32,
    @"locked": u32,
    @"effective": u32,
};

/// @brief XIQueryPointercookie
pub const XIQueryPointercookie = struct {
    sequence: c_uint,
};

/// @brief XIQueryPointerRequest
pub const XIQueryPointerRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 40,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief XIQueryPointerReply
pub const XIQueryPointerReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"root": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"root_x": xcb.input.FP1616,
    @"root_y": xcb.input.FP1616,
    @"win_x": xcb.input.FP1616,
    @"win_y": xcb.input.FP1616,
    @"same_screen": u8,
    @"pad1": u8,
    @"buttons_len": u16,
    @"mods": xcb.input.ModifierInfo,
    @"group": xcb.input.GroupInfo,
    @"buttons": [*]u32,
};

/// @brief XIWarpPointerRequest
pub const XIWarpPointerRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 41,
    @"length": u16,
    @"src_win": xcb.WINDOW,
    @"dst_win": xcb.WINDOW,
    @"src_x": xcb.input.FP1616,
    @"src_y": xcb.input.FP1616,
    @"src_width": u16,
    @"src_height": u16,
    @"dst_x": xcb.input.FP1616,
    @"dst_y": xcb.input.FP1616,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief XIChangeCursorRequest
pub const XIChangeCursorRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 42,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"cursor": xcb.CURSOR,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

pub const HierarchyChangeType = extern enum(c_uint) {
    @"AddMaster" = 1,
    @"RemoveMaster" = 2,
    @"AttachSlave" = 3,
    @"DetachSlave" = 4,
};

pub const ChangeMode = extern enum(c_uint) {
    @"Attach" = 1,
    @"Float" = 2,
};

/// @brief AddMaster
pub const AddMaster = extern struct {
    @"type": u16,
    @"len": u16,
    @"name_len": u16,
    @"send_core": u8,
    @"enable": u8,
    @"name": [*]u8,
};

/// @brief RemoveMaster
pub const RemoveMaster = extern struct {
    @"type": u16,
    @"len": u16,
    @"deviceid": xcb.input.DeviceId,
    @"return_mode": u8,
    @"pad0": u8,
    @"return_pointer": xcb.input.DeviceId,
    @"return_keyboard": xcb.input.DeviceId,
};

/// @brief AttachSlave
pub const AttachSlave = extern struct {
    @"type": u16,
    @"len": u16,
    @"deviceid": xcb.input.DeviceId,
    @"master": xcb.input.DeviceId,
};

/// @brief DetachSlave
pub const DetachSlave = extern struct {
    @"type": u16,
    @"len": u16,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief HierarchyChange
pub const HierarchyChange = extern struct {
    @"type": u16,
    @"len": u16,
};

/// @brief XIChangeHierarchyRequest
pub const XIChangeHierarchyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 43,
    @"length": u16,
    @"num_changes": u8,
    @"pad0": [3]u8,
    @"changes": [*]xcb.input.HierarchyChange,
};

/// @brief XISetClientPointerRequest
pub const XISetClientPointerRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 44,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief XIGetClientPointercookie
pub const XIGetClientPointercookie = struct {
    sequence: c_uint,
};

/// @brief XIGetClientPointerRequest
pub const XIGetClientPointerRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 45,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief XIGetClientPointerReply
pub const XIGetClientPointerReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"set": u8,
    @"pad1": u8,
    @"deviceid": xcb.input.DeviceId,
    @"pad2": [20]u8,
};

pub const XIEventMask = extern enum(c_uint) {
    @"DeviceChanged" = 2,
    @"KeyPress" = 4,
    @"KeyRelease" = 8,
    @"ButtonPress" = 16,
    @"ButtonRelease" = 32,
    @"Motion" = 64,
    @"Enter" = 128,
    @"Leave" = 256,
    @"FocusIn" = 512,
    @"FocusOut" = 1024,
    @"Hierarchy" = 2048,
    @"Property" = 4096,
    @"RawKeyPress" = 8192,
    @"RawKeyRelease" = 16384,
    @"RawButtonPress" = 32768,
    @"RawButtonRelease" = 65536,
    @"RawMotion" = 131072,
    @"TouchBegin" = 262144,
    @"TouchUpdate" = 524288,
    @"TouchEnd" = 1048576,
    @"TouchOwnership" = 2097152,
    @"RawTouchBegin" = 4194304,
    @"RawTouchUpdate" = 8388608,
    @"RawTouchEnd" = 16777216,
    @"BarrierHit" = 33554432,
    @"BarrierLeave" = 67108864,
};

/// @brief EventMask
pub const EventMask = extern struct {
    @"deviceid": xcb.input.DeviceId,
    @"mask_len": u16,
    @"mask": [*]u32,
};

/// @brief XISelectEventsRequest
pub const XISelectEventsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 46,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"num_mask": u16,
    @"pad0": [2]u8,
    @"masks": [*]xcb.input.EventMask,
};

/// @brief XIQueryVersioncookie
pub const XIQueryVersioncookie = struct {
    sequence: c_uint,
};

/// @brief XIQueryVersionRequest
pub const XIQueryVersionRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 47,
    @"length": u16,
    @"major_version": u16,
    @"minor_version": u16,
};

/// @brief XIQueryVersionReply
pub const XIQueryVersionReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u16,
    @"minor_version": u16,
    @"pad1": [20]u8,
};

pub const DeviceClassType = extern enum(c_uint) {
    @"Key" = 0,
    @"Button" = 1,
    @"Valuator" = 2,
    @"Scroll" = 3,
    @"Touch" = 8,
};

pub const DeviceType = extern enum(c_uint) {
    @"MasterPointer" = 1,
    @"MasterKeyboard" = 2,
    @"SlavePointer" = 3,
    @"SlaveKeyboard" = 4,
    @"FloatingSlave" = 5,
};

pub const ScrollFlags = extern enum(c_uint) {
    @"NoEmulation" = 1,
    @"Preferred" = 2,
};

pub const ScrollType = extern enum(c_uint) {
    @"Vertical" = 1,
    @"Horizontal" = 2,
};

pub const TouchMode = extern enum(c_uint) {
    @"Direct" = 1,
    @"Dependent" = 2,
};

/// @brief ButtonClass
pub const ButtonClass = extern struct {
    @"type": u16,
    @"len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"num_buttons": u16,
    @"state": [*]u32,
    @"labels": [*]xcb.ATOM,
};

/// @brief KeyClass
pub const KeyClass = extern struct {
    @"type": u16,
    @"len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"num_keys": u16,
    @"keys": [*]u32,
};

/// @brief ScrollClass
pub const ScrollClass = extern struct {
    @"type": u16,
    @"len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"number": u16,
    @"scroll_type": u16,
    @"pad0": [2]u8,
    @"flags": u32,
    @"increment": xcb.input.FP3232,
};

/// @brief TouchClass
pub const TouchClass = extern struct {
    @"type": u16,
    @"len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"mode": u8,
    @"num_touches": u8,
};

/// @brief ValuatorClass
pub const ValuatorClass = extern struct {
    @"type": u16,
    @"len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"number": u16,
    @"label": xcb.ATOM,
    @"min": xcb.input.FP3232,
    @"max": xcb.input.FP3232,
    @"value": xcb.input.FP3232,
    @"resolution": u32,
    @"mode": u8,
    @"pad0": [3]u8,
};

/// @brief DeviceClass
pub const DeviceClass = extern struct {
    @"type": u16,
    @"len": u16,
    @"sourceid": xcb.input.DeviceId,
};

/// @brief XIDeviceInfo
pub const XIDeviceInfo = extern struct {
    @"deviceid": xcb.input.DeviceId,
    @"type": u16,
    @"attachment": xcb.input.DeviceId,
    @"num_classes": u16,
    @"name_len": u16,
    @"enabled": u8,
    @"pad0": u8,
    @"name": [*]u8,
    @"classes": [*]xcb.input.DeviceClass,
};

/// @brief XIQueryDevicecookie
pub const XIQueryDevicecookie = struct {
    sequence: c_uint,
};

/// @brief XIQueryDeviceRequest
pub const XIQueryDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 48,
    @"length": u16,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief XIQueryDeviceReply
pub const XIQueryDeviceReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_infos": u16,
    @"pad1": [22]u8,
    @"infos": [*]xcb.input.XIDeviceInfo,
};

/// @brief XISetFocusRequest
pub const XISetFocusRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 49,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"time": xcb.TIMESTAMP,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief XIGetFocuscookie
pub const XIGetFocuscookie = struct {
    sequence: c_uint,
};

/// @brief XIGetFocusRequest
pub const XIGetFocusRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 50,
    @"length": u16,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief XIGetFocusReply
pub const XIGetFocusReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"focus": xcb.WINDOW,
    @"pad1": [20]u8,
};

pub const GrabOwner = extern enum(c_uint) {
    @"NoOwner" = 0,
    @"Owner" = 1,
};

/// @brief XIGrabDevicecookie
pub const XIGrabDevicecookie = struct {
    sequence: c_uint,
};

/// @brief XIGrabDeviceRequest
pub const XIGrabDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 51,
    @"length": u16,
    @"window": xcb.WINDOW,
    @"time": xcb.TIMESTAMP,
    @"cursor": xcb.CURSOR,
    @"deviceid": xcb.input.DeviceId,
    @"mode": u8,
    @"paired_device_mode": u8,
    @"owner_events": u8,
    @"pad0": u8,
    @"mask_len": u16,
    @"mask": [*]u32,
};

/// @brief XIGrabDeviceReply
pub const XIGrabDeviceReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"status": u8,
    @"pad1": [23]u8,
};

/// @brief XIUngrabDeviceRequest
pub const XIUngrabDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 52,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

pub const EventMode = extern enum(c_uint) {
    @"AsyncDevice" = 0,
    @"SyncDevice" = 1,
    @"ReplayDevice" = 2,
    @"AsyncPairedDevice" = 3,
    @"AsyncPair" = 4,
    @"SyncPair" = 5,
    @"AcceptTouch" = 6,
    @"RejectTouch" = 7,
};

/// @brief XIAllowEventsRequest
pub const XIAllowEventsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 53,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceid": xcb.input.DeviceId,
    @"event_mode": u8,
    @"pad0": u8,
    @"touchid": u32,
    @"grab_window": xcb.WINDOW,
};

pub const GrabMode22 = extern enum(c_uint) {
    @"Sync" = 0,
    @"Async" = 1,
    @"Touch" = 2,
};

pub const GrabType = extern enum(c_uint) {
    @"Button" = 0,
    @"Keycode" = 1,
    @"Enter" = 2,
    @"FocusIn" = 3,
    @"TouchBegin" = 4,
};

pub const ModifierMask = extern enum(c_uint) {
    @"Any" = 2147483648,
};

/// @brief GrabModifierInfo
pub const GrabModifierInfo = extern struct {
    @"modifiers": u32,
    @"status": u8,
    @"pad0": [3]u8,
};

/// @brief XIPassiveGrabDevicecookie
pub const XIPassiveGrabDevicecookie = struct {
    sequence: c_uint,
};

/// @brief XIPassiveGrabDeviceRequest
pub const XIPassiveGrabDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 54,
    @"length": u16,
    @"time": xcb.TIMESTAMP,
    @"grab_window": xcb.WINDOW,
    @"cursor": xcb.CURSOR,
    @"detail": u32,
    @"deviceid": xcb.input.DeviceId,
    @"num_modifiers": u16,
    @"mask_len": u16,
    @"grab_type": u8,
    @"grab_mode": u8,
    @"paired_device_mode": u8,
    @"owner_events": u8,
    @"pad0": [2]u8,
    @"mask": [*]u32,
    @"modifiers": [*]u32,
};

/// @brief XIPassiveGrabDeviceReply
pub const XIPassiveGrabDeviceReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_modifiers": u16,
    @"pad1": [22]u8,
    @"modifiers": [*]xcb.input.GrabModifierInfo,
};

/// @brief XIPassiveUngrabDeviceRequest
pub const XIPassiveUngrabDeviceRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 55,
    @"length": u16,
    @"grab_window": xcb.WINDOW,
    @"detail": u32,
    @"deviceid": xcb.input.DeviceId,
    @"num_modifiers": u16,
    @"grab_type": u8,
    @"pad0": [3]u8,
    @"modifiers": [*]u32,
};

/// @brief XIListPropertiescookie
pub const XIListPropertiescookie = struct {
    sequence: c_uint,
};

/// @brief XIListPropertiesRequest
pub const XIListPropertiesRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 56,
    @"length": u16,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
};

/// @brief XIListPropertiesReply
pub const XIListPropertiesReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_properties": u16,
    @"pad1": [22]u8,
    @"properties": [*]xcb.ATOM,
};

/// @brief XIChangePropertyRequest
pub const XIChangePropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 57,
    @"length": u16,
    @"deviceid": xcb.input.DeviceId,
    @"mode": u8,
    @"format": u8,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"num_items": u32,
};

/// @brief XIDeletePropertyRequest
pub const XIDeletePropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 58,
    @"length": u16,
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
    @"property": xcb.ATOM,
};

/// @brief XIGetPropertycookie
pub const XIGetPropertycookie = struct {
    sequence: c_uint,
};

/// @brief XIGetPropertyRequest
pub const XIGetPropertyRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 59,
    @"length": u16,
    @"deviceid": xcb.input.DeviceId,
    @"delete": u8,
    @"pad0": u8,
    @"property": xcb.ATOM,
    @"type": xcb.ATOM,
    @"offset": u32,
    @"len": u32,
};

/// @brief XIGetPropertyReply
pub const XIGetPropertyReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"type": xcb.ATOM,
    @"bytes_after": u32,
    @"num_items": u32,
    @"format": u8,
    @"pad1": [11]u8,
};

/// @brief XIGetSelectedEventscookie
pub const XIGetSelectedEventscookie = struct {
    sequence: c_uint,
};

/// @brief XIGetSelectedEventsRequest
pub const XIGetSelectedEventsRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 60,
    @"length": u16,
    @"window": xcb.WINDOW,
};

/// @brief XIGetSelectedEventsReply
pub const XIGetSelectedEventsReply = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"num_masks": u16,
    @"pad1": [22]u8,
    @"masks": [*]xcb.input.EventMask,
};

/// @brief BarrierReleasePointerInfo
pub const BarrierReleasePointerInfo = extern struct {
    @"deviceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
    @"barrier": xcb.xfixes.BARRIER,
    @"eventid": u32,
};

/// @brief XIBarrierReleasePointerRequest
pub const XIBarrierReleasePointerRequest = extern struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 61,
    @"length": u16,
    @"num_barriers": u32,
    @"barriers": [*]xcb.input.BarrierReleasePointerInfo,
};

/// Opcode for DeviceValuator.
pub const DeviceValuatorOpcode = 0;

/// @brief DeviceValuatorEvent
pub const DeviceValuatorEvent = extern struct {
    @"response_type": u8,
    @"device_id": u8,
    @"sequence": u16,
    @"device_state": u16,
    @"num_valuators": u8,
    @"first_valuator": u8,
    @"valuators": [6]i32,
};

pub const MoreEventsMask = extern enum(c_uint) {
    @"MoreEvents" = 128,
};

/// Opcode for DeviceKeyPress.
pub const DeviceKeyPressOpcode = 1;

/// @brief DeviceKeyPressEvent
pub const DeviceKeyPressEvent = extern struct {
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
    @"device_id": u8,
};

/// Opcode for DeviceKeyRelease.
pub const DeviceKeyReleaseOpcode = 2;

pub const DeviceKeyReleaseEvent = xcb.input.DeviceKeyPressEvent;
/// Opcode for DeviceButtonPress.
pub const DeviceButtonPressOpcode = 3;

pub const DeviceButtonPressEvent = xcb.input.DeviceKeyPressEvent;
/// Opcode for DeviceButtonRelease.
pub const DeviceButtonReleaseOpcode = 4;

pub const DeviceButtonReleaseEvent = xcb.input.DeviceKeyPressEvent;
/// Opcode for DeviceMotionNotify.
pub const DeviceMotionNotifyOpcode = 5;

pub const DeviceMotionNotifyEvent = xcb.input.DeviceKeyPressEvent;
/// Opcode for DeviceFocusIn.
pub const DeviceFocusInOpcode = 6;

/// @brief DeviceFocusInEvent
pub const DeviceFocusInEvent = extern struct {
    @"response_type": u8,
    @"detail": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"window": xcb.WINDOW,
    @"mode": u8,
    @"device_id": u8,
    @"pad0": [18]u8,
};

/// Opcode for DeviceFocusOut.
pub const DeviceFocusOutOpcode = 7;

pub const DeviceFocusOutEvent = xcb.input.DeviceFocusInEvent;
/// Opcode for ProximityIn.
pub const ProximityInOpcode = 8;

pub const ProximityInEvent = xcb.input.DeviceKeyPressEvent;
/// Opcode for ProximityOut.
pub const ProximityOutOpcode = 9;

pub const ProximityOutEvent = xcb.input.DeviceKeyPressEvent;
pub const ClassesReportedMask = extern enum(c_uint) {
    @"OutOfProximity" = 128,
    @"DeviceModeAbsolute" = 64,
    @"ReportingValuators" = 4,
    @"ReportingButtons" = 2,
    @"ReportingKeys" = 1,
};

/// Opcode for DeviceStateNotify.
pub const DeviceStateNotifyOpcode = 10;

/// @brief DeviceStateNotifyEvent
pub const DeviceStateNotifyEvent = extern struct {
    @"response_type": u8,
    @"device_id": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"num_keys": u8,
    @"num_buttons": u8,
    @"num_valuators": u8,
    @"classes_reported": u8,
    @"buttons": [4]u8,
    @"keys": [4]u8,
    @"valuators": [3]u32,
};

/// Opcode for DeviceMappingNotify.
pub const DeviceMappingNotifyOpcode = 11;

/// @brief DeviceMappingNotifyEvent
pub const DeviceMappingNotifyEvent = extern struct {
    @"response_type": u8,
    @"device_id": u8,
    @"sequence": u16,
    @"request": u8,
    @"first_keycode": xcb.input.KeyCode,
    @"count": u8,
    @"pad0": u8,
    @"time": xcb.TIMESTAMP,
    @"pad1": [20]u8,
};

pub const ChangeDevice = extern enum(c_uint) {
    @"NewPointer" = 0,
    @"NewKeyboard" = 1,
};

/// Opcode for ChangeDeviceNotify.
pub const ChangeDeviceNotifyOpcode = 12;

/// @brief ChangeDeviceNotifyEvent
pub const ChangeDeviceNotifyEvent = extern struct {
    @"response_type": u8,
    @"device_id": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"request": u8,
    @"pad0": [23]u8,
};

/// Opcode for DeviceKeyStateNotify.
pub const DeviceKeyStateNotifyOpcode = 13;

/// @brief DeviceKeyStateNotifyEvent
pub const DeviceKeyStateNotifyEvent = extern struct {
    @"response_type": u8,
    @"device_id": u8,
    @"sequence": u16,
    @"keys": [28]u8,
};

/// Opcode for DeviceButtonStateNotify.
pub const DeviceButtonStateNotifyOpcode = 14;

/// @brief DeviceButtonStateNotifyEvent
pub const DeviceButtonStateNotifyEvent = extern struct {
    @"response_type": u8,
    @"device_id": u8,
    @"sequence": u16,
    @"buttons": [28]u8,
};

pub const DeviceChange = extern enum(c_uint) {
    @"Added" = 0,
    @"Removed" = 1,
    @"Enabled" = 2,
    @"Disabled" = 3,
    @"Unrecoverable" = 4,
    @"ControlChanged" = 5,
};

/// Opcode for DevicePresenceNotify.
pub const DevicePresenceNotifyOpcode = 15;

/// @brief DevicePresenceNotifyEvent
pub const DevicePresenceNotifyEvent = extern struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"devchange": u8,
    @"device_id": u8,
    @"control": u16,
    @"pad1": [20]u8,
};

/// Opcode for DevicePropertyNotify.
pub const DevicePropertyNotifyOpcode = 16;

/// @brief DevicePropertyNotifyEvent
pub const DevicePropertyNotifyEvent = extern struct {
    @"response_type": u8,
    @"state": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"property": xcb.ATOM,
    @"pad0": [19]u8,
    @"device_id": u8,
};

pub const ChangeReason = extern enum(c_uint) {
    @"SlaveSwitch" = 1,
    @"DeviceChange" = 2,
};

/// Opcode for DeviceChanged.
pub const DeviceChangedOpcode = 1;

/// @brief DeviceChangedEvent
pub const DeviceChangedEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"num_classes": u16,
    @"sourceid": xcb.input.DeviceId,
    @"reason": u8,
    @"pad0": [11]u8,
    @"full_sequence": u32,
    @"classes": [*]xcb.input.DeviceClass,
};

pub const KeyEventFlags = extern enum(c_uint) {
    @"KeyRepeat" = 65536,
};

/// Opcode for KeyPress.
pub const KeyPressOpcode = 2;

/// @brief KeyPressEvent
pub const KeyPressEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"detail": u32,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"full_sequence": u32,
    @"root_x": xcb.input.FP1616,
    @"root_y": xcb.input.FP1616,
    @"event_x": xcb.input.FP1616,
    @"event_y": xcb.input.FP1616,
    @"buttons_len": u16,
    @"valuators_len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
    @"flags": u32,
    @"mods": xcb.input.ModifierInfo,
    @"group": xcb.input.GroupInfo,
    @"button_mask": [*]u32,
    @"valuator_mask": [*]u32,
    @"axisvalues": [*]xcb.input.FP3232,
};

/// Opcode for KeyRelease.
pub const KeyReleaseOpcode = 3;

pub const KeyReleaseEvent = xcb.input.KeyPressEvent;
pub const PointerEventFlags = extern enum(c_uint) {
    @"PointerEmulated" = 65536,
};

/// Opcode for ButtonPress.
pub const ButtonPressOpcode = 4;

/// @brief ButtonPressEvent
pub const ButtonPressEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"detail": u32,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"full_sequence": u32,
    @"root_x": xcb.input.FP1616,
    @"root_y": xcb.input.FP1616,
    @"event_x": xcb.input.FP1616,
    @"event_y": xcb.input.FP1616,
    @"buttons_len": u16,
    @"valuators_len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
    @"flags": u32,
    @"mods": xcb.input.ModifierInfo,
    @"group": xcb.input.GroupInfo,
    @"button_mask": [*]u32,
    @"valuator_mask": [*]u32,
    @"axisvalues": [*]xcb.input.FP3232,
};

/// Opcode for ButtonRelease.
pub const ButtonReleaseOpcode = 5;

pub const ButtonReleaseEvent = xcb.input.ButtonPressEvent;
/// Opcode for Motion.
pub const MotionOpcode = 6;

pub const MotionEvent = xcb.input.ButtonPressEvent;
pub const NotifyMode = extern enum(c_uint) {
    @"Normal" = 0,
    @"Grab" = 1,
    @"Ungrab" = 2,
    @"WhileGrabbed" = 3,
    @"PassiveGrab" = 4,
    @"PassiveUngrab" = 5,
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

/// Opcode for Enter.
pub const EnterOpcode = 7;

/// @brief EnterEvent
pub const EnterEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"sourceid": xcb.input.DeviceId,
    @"mode": u8,
    @"detail": u8,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"full_sequence": u32,
    @"root_x": xcb.input.FP1616,
    @"root_y": xcb.input.FP1616,
    @"event_x": xcb.input.FP1616,
    @"event_y": xcb.input.FP1616,
    @"same_screen": u8,
    @"focus": u8,
    @"buttons_len": u16,
    @"mods": xcb.input.ModifierInfo,
    @"group": xcb.input.GroupInfo,
    @"buttons": [*]u32,
};

/// Opcode for Leave.
pub const LeaveOpcode = 8;

pub const LeaveEvent = xcb.input.EnterEvent;
/// Opcode for FocusIn.
pub const FocusInOpcode = 9;

pub const FocusInEvent = xcb.input.EnterEvent;
/// Opcode for FocusOut.
pub const FocusOutOpcode = 10;

pub const FocusOutEvent = xcb.input.EnterEvent;
pub const HierarchyMask = extern enum(c_uint) {
    @"MasterAdded" = 1,
    @"MasterRemoved" = 2,
    @"SlaveAdded" = 4,
    @"SlaveRemoved" = 8,
    @"SlaveAttached" = 16,
    @"SlaveDetached" = 32,
    @"DeviceEnabled" = 64,
    @"DeviceDisabled" = 128,
};

/// @brief HierarchyInfo
pub const HierarchyInfo = extern struct {
    @"deviceid": xcb.input.DeviceId,
    @"attachment": xcb.input.DeviceId,
    @"type": u8,
    @"enabled": u8,
    @"pad0": [2]u8,
    @"flags": u32,
};

/// Opcode for Hierarchy.
pub const HierarchyOpcode = 11;

/// @brief HierarchyEvent
pub const HierarchyEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"flags": u32,
    @"num_infos": u16,
    @"pad0": [10]u8,
    @"full_sequence": u32,
    @"infos": [*]xcb.input.HierarchyInfo,
};

pub const PropertyFlag = extern enum(c_uint) {
    @"Deleted" = 0,
    @"Created" = 1,
    @"Modified" = 2,
};

/// Opcode for Property.
pub const PropertyOpcode = 12;

/// @brief PropertyEvent
pub const PropertyEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"property": xcb.ATOM,
    @"what": u8,
    @"pad0": [11]u8,
    @"full_sequence": u32,
};

/// Opcode for RawKeyPress.
pub const RawKeyPressOpcode = 13;

/// @brief RawKeyPressEvent
pub const RawKeyPressEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"detail": u32,
    @"sourceid": xcb.input.DeviceId,
    @"valuators_len": u16,
    @"flags": u32,
    @"pad0": [4]u8,
    @"full_sequence": u32,
    @"valuator_mask": [*]u32,
    @"axisvalues": [*]xcb.input.FP3232,
    @"axisvalues_raw": [*]xcb.input.FP3232,
};

/// Opcode for RawKeyRelease.
pub const RawKeyReleaseOpcode = 14;

pub const RawKeyReleaseEvent = xcb.input.RawKeyPressEvent;
/// Opcode for RawButtonPress.
pub const RawButtonPressOpcode = 15;

/// @brief RawButtonPressEvent
pub const RawButtonPressEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"detail": u32,
    @"sourceid": xcb.input.DeviceId,
    @"valuators_len": u16,
    @"flags": u32,
    @"pad0": [4]u8,
    @"full_sequence": u32,
    @"valuator_mask": [*]u32,
    @"axisvalues": [*]xcb.input.FP3232,
    @"axisvalues_raw": [*]xcb.input.FP3232,
};

/// Opcode for RawButtonRelease.
pub const RawButtonReleaseOpcode = 16;

pub const RawButtonReleaseEvent = xcb.input.RawButtonPressEvent;
/// Opcode for RawMotion.
pub const RawMotionOpcode = 17;

pub const RawMotionEvent = xcb.input.RawButtonPressEvent;
pub const TouchEventFlags = extern enum(c_uint) {
    @"TouchPendingEnd" = 65536,
    @"TouchEmulatingPointer" = 131072,
};

/// Opcode for TouchBegin.
pub const TouchBeginOpcode = 18;

/// @brief TouchBeginEvent
pub const TouchBeginEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"detail": u32,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"full_sequence": u32,
    @"root_x": xcb.input.FP1616,
    @"root_y": xcb.input.FP1616,
    @"event_x": xcb.input.FP1616,
    @"event_y": xcb.input.FP1616,
    @"buttons_len": u16,
    @"valuators_len": u16,
    @"sourceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
    @"flags": u32,
    @"mods": xcb.input.ModifierInfo,
    @"group": xcb.input.GroupInfo,
    @"button_mask": [*]u32,
    @"valuator_mask": [*]u32,
    @"axisvalues": [*]xcb.input.FP3232,
};

/// Opcode for TouchUpdate.
pub const TouchUpdateOpcode = 19;

pub const TouchUpdateEvent = xcb.input.TouchBeginEvent;
/// Opcode for TouchEnd.
pub const TouchEndOpcode = 20;

pub const TouchEndEvent = xcb.input.TouchBeginEvent;
pub const TouchOwnershipFlags = extern enum(c_uint) {
    @"None" = 0,
};

/// Opcode for TouchOwnership.
pub const TouchOwnershipOpcode = 21;

/// @brief TouchOwnershipEvent
pub const TouchOwnershipEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"touchid": u32,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"child": xcb.WINDOW,
    @"full_sequence": u32,
    @"sourceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
    @"flags": u32,
    @"pad1": [8]u8,
};

/// Opcode for RawTouchBegin.
pub const RawTouchBeginOpcode = 22;

/// @brief RawTouchBeginEvent
pub const RawTouchBeginEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"detail": u32,
    @"sourceid": xcb.input.DeviceId,
    @"valuators_len": u16,
    @"flags": u32,
    @"pad0": [4]u8,
    @"full_sequence": u32,
    @"valuator_mask": [*]u32,
    @"axisvalues": [*]xcb.input.FP3232,
    @"axisvalues_raw": [*]xcb.input.FP3232,
};

/// Opcode for RawTouchUpdate.
pub const RawTouchUpdateOpcode = 23;

pub const RawTouchUpdateEvent = xcb.input.RawTouchBeginEvent;
/// Opcode for RawTouchEnd.
pub const RawTouchEndOpcode = 24;

pub const RawTouchEndEvent = xcb.input.RawTouchBeginEvent;
pub const BarrierFlags = extern enum(c_uint) {
    @"PointerReleased" = 1,
    @"DeviceIsGrabbed" = 2,
};

/// Opcode for BarrierHit.
pub const BarrierHitOpcode = 25;

/// @brief BarrierHitEvent
pub const BarrierHitEvent = extern struct {
    @"response_type": u8,
    @"extension": u8,
    @"sequence": u16,
    @"length": u32,
    @"event_type": u16,
    @"deviceid": xcb.input.DeviceId,
    @"time": xcb.TIMESTAMP,
    @"eventid": u32,
    @"root": xcb.WINDOW,
    @"event": xcb.WINDOW,
    @"barrier": xcb.xfixes.BARRIER,
    @"full_sequence": u32,
    @"dtime": u32,
    @"flags": u32,
    @"sourceid": xcb.input.DeviceId,
    @"pad0": [2]u8,
    @"root_x": xcb.input.FP1616,
    @"root_y": xcb.input.FP1616,
    @"dx": xcb.input.FP3232,
    @"dy": xcb.input.FP3232,
};

/// Opcode for BarrierLeave.
pub const BarrierLeaveOpcode = 26;

pub const BarrierLeaveEvent = xcb.input.BarrierHitEvent;
/// Opcode for Device.
pub const DeviceOpcode = 0;

/// @brief DeviceError
pub const DeviceError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for Event.
pub const EventOpcode = 1;

/// @brief EventError
pub const EventError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for Mode.
pub const ModeOpcode = 2;

/// @brief ModeError
pub const ModeError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for DeviceBusy.
pub const DeviceBusyOpcode = 3;

/// @brief DeviceBusyError
pub const DeviceBusyError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

/// Opcode for Class.
pub const ClassOpcode = 4;

/// @brief ClassError
pub const ClassError = extern struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
