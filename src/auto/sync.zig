//!
//! This file generated automatically from sync.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "SYNC", .global_id = 0 };

pub const ALARM = u32;

pub const ALARMSTATE = extern enum(c_uint) {
    @"Active" = 0,
    @"Inactive" = 1,
    @"Destroyed" = 2,
};

pub const COUNTER = u32;

pub const FENCE = u32;

pub const TESTTYPE = extern enum(c_uint) {
    @"PositiveTransition" = 0,
    @"NegativeTransition" = 1,
    @"PositiveComparison" = 2,
    @"NegativeComparison" = 3,
};

pub const VALUETYPE = extern enum(c_uint) {
    @"Absolute" = 0,
    @"Relative" = 1,
};

pub const CA = extern enum(c_uint) {
    @"Counter" = 1,
    @"ValueType" = 2,
    @"Value" = 4,
    @"TestType" = 8,
    @"Delta" = 16,
    @"Events" = 32,
};

/// @brief INT64
pub const INT64 = struct {
    @"hi": i32,
    @"lo": u32,
};

/// @brief SYSTEMCOUNTER
pub const SYSTEMCOUNTER = struct {
    @"counter": xcb.sync.COUNTER,
    @"resolution": xcb.sync.INT64,
    @"name_len": u16,
    @"name": []u8,
};

/// @brief TRIGGER
pub const TRIGGER = struct {
    @"counter": xcb.sync.COUNTER,
    @"wait_type": u32,
    @"wait_value": xcb.sync.INT64,
    @"test_type": u32,
};

/// @brief WAITCONDITION
pub const WAITCONDITION = struct {
    @"trigger": xcb.sync.TRIGGER,
    @"event_threshold": xcb.sync.INT64,
};

/// Opcode for Counter.
pub const CounterOpcode = 0;

/// @brief CounterError
pub const CounterError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
    @"bad_counter": u32,
    @"minor_opcode": u16,
    @"major_opcode": u8,
};

/// Opcode for Alarm.
pub const AlarmOpcode = 1;

/// @brief AlarmError
pub const AlarmError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
    @"bad_alarm": u32,
    @"minor_opcode": u16,
    @"major_opcode": u8,
};

/// @brief Initializecookie
pub const Initializecookie = struct {
    sequence: c_uint,
};

/// @brief InitializeRequest
pub const InitializeRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"desired_major_version": u8,
    @"desired_minor_version": u8,
};

/// @brief InitializeReply
pub const InitializeReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"major_version": u8,
    @"minor_version": u8,
    @"pad1": [22]u8,
};

/// @brief ListSystemCounterscookie
pub const ListSystemCounterscookie = struct {
    sequence: c_uint,
};

/// @brief ListSystemCountersRequest
pub const ListSystemCountersRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
};

/// @brief ListSystemCountersReply
pub const ListSystemCountersReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"counters_len": u32,
    @"pad1": [20]u8,
    @"counters": []xcb.sync.SYSTEMCOUNTER,
};

/// @brief CreateCounterRequest
pub const CreateCounterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 2,
    @"length": u16,
    @"id": xcb.sync.COUNTER,
    @"initial_value": xcb.sync.INT64,
};

/// @brief DestroyCounterRequest
pub const DestroyCounterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"counter": xcb.sync.COUNTER,
};

/// @brief QueryCountercookie
pub const QueryCountercookie = struct {
    sequence: c_uint,
};

/// @brief QueryCounterRequest
pub const QueryCounterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"counter": xcb.sync.COUNTER,
};

/// @brief QueryCounterReply
pub const QueryCounterReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"counter_value": xcb.sync.INT64,
};

/// @brief AwaitRequest
pub const AwaitRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"wait_list": []const xcb.sync.WAITCONDITION,
};

/// @brief ChangeCounterRequest
pub const ChangeCounterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"counter": xcb.sync.COUNTER,
    @"amount": xcb.sync.INT64,
};

/// @brief SetCounterRequest
pub const SetCounterRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"counter": xcb.sync.COUNTER,
    @"value": xcb.sync.INT64,
};

/// @brief CreateAlarmRequest
pub const CreateAlarmRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"id": xcb.sync.ALARM,
    @"value_mask": u32,
};

/// @brief ChangeAlarmRequest
pub const ChangeAlarmRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"id": xcb.sync.ALARM,
    @"value_mask": u32,
};

/// @brief DestroyAlarmRequest
pub const DestroyAlarmRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"alarm": xcb.sync.ALARM,
};

/// @brief QueryAlarmcookie
pub const QueryAlarmcookie = struct {
    sequence: c_uint,
};

/// @brief QueryAlarmRequest
pub const QueryAlarmRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"alarm": xcb.sync.ALARM,
};

/// @brief QueryAlarmReply
pub const QueryAlarmReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"trigger": xcb.sync.TRIGGER,
    @"delta": xcb.sync.INT64,
    @"events": u8,
    @"state": u8,
    @"pad1": [2]u8,
};

/// @brief SetPriorityRequest
pub const SetPriorityRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"id": u32,
    @"priority": i32,
};

/// @brief GetPrioritycookie
pub const GetPrioritycookie = struct {
    sequence: c_uint,
};

/// @brief GetPriorityRequest
pub const GetPriorityRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"id": u32,
};

/// @brief GetPriorityReply
pub const GetPriorityReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"priority": i32,
};

/// @brief CreateFenceRequest
pub const CreateFenceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"drawable": xcb.DRAWABLE,
    @"fence": xcb.sync.FENCE,
    @"initially_triggered": u8,
};

/// @brief TriggerFenceRequest
pub const TriggerFenceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"fence": xcb.sync.FENCE,
};

/// @brief ResetFenceRequest
pub const ResetFenceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"fence": xcb.sync.FENCE,
};

/// @brief DestroyFenceRequest
pub const DestroyFenceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"fence": xcb.sync.FENCE,
};

/// @brief QueryFencecookie
pub const QueryFencecookie = struct {
    sequence: c_uint,
};

/// @brief QueryFenceRequest
pub const QueryFenceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"fence": xcb.sync.FENCE,
};

/// @brief QueryFenceReply
pub const QueryFenceReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"triggered": u8,
    @"pad1": [23]u8,
};

/// @brief AwaitFenceRequest
pub const AwaitFenceRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 19,
    @"length": u16,
    @"fence_list": []const xcb.sync.FENCE,
};

/// Opcode for CounterNotify.
pub const CounterNotifyOpcode = 0;

/// @brief CounterNotifyEvent
pub const CounterNotifyEvent = struct {
    @"response_type": u8,
    @"kind": u8,
    @"sequence": u16,
    @"counter": xcb.sync.COUNTER,
    @"wait_value": xcb.sync.INT64,
    @"counter_value": xcb.sync.INT64,
    @"timestamp": xcb.TIMESTAMP,
    @"count": u16,
    @"destroyed": u8,
    @"pad0": u8,
};

/// Opcode for AlarmNotify.
pub const AlarmNotifyOpcode = 1;

/// @brief AlarmNotifyEvent
pub const AlarmNotifyEvent = struct {
    @"response_type": u8,
    @"kind": u8,
    @"sequence": u16,
    @"alarm": xcb.sync.ALARM,
    @"counter_value": xcb.sync.INT64,
    @"alarm_value": xcb.sync.INT64,
    @"timestamp": xcb.TIMESTAMP,
    @"state": u8,
    @"pad0": [3]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
