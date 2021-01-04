//!
//! This file generated automatically from xkb.xml by zig_client.py.
//! Edit at your peril.
//!

const xcb = @import("../xcb.zig");

pub const id = xcb.Extension{ .name = "XKEYBOARD", .global_id = 0 };

pub const Const = extern enum(c_uint) {
    @"MaxLegalKeyCode" = 255,
    @"PerKeyBitArraySize" = 32,
    @"KeyNameLength" = 4,
};

pub const EventType = extern enum(c_uint) {
    @"NewKeyboardNotify" = 1,
    @"MapNotify" = 2,
    @"StateNotify" = 4,
    @"ControlsNotify" = 8,
    @"IndicatorStateNotify" = 16,
    @"IndicatorMapNotify" = 32,
    @"NamesNotify" = 64,
    @"CompatMapNotify" = 128,
    @"BellNotify" = 256,
    @"ActionMessage" = 512,
    @"AccessXNotify" = 1024,
    @"ExtensionDeviceNotify" = 2048,
};

pub const NKNDetail = extern enum(c_uint) {
    @"Keycodes" = 1,
    @"Geometry" = 2,
    @"DeviceID" = 4,
};

pub const AXNDetail = extern enum(c_uint) {
    @"SKPress" = 1,
    @"SKAccept" = 2,
    @"SKReject" = 4,
    @"SKRelease" = 8,
    @"BKAccept" = 16,
    @"BKReject" = 32,
    @"AXKWarning" = 64,
};

pub const MapPart = extern enum(c_uint) {
    @"KeyTypes" = 1,
    @"KeySyms" = 2,
    @"ModifierMap" = 4,
    @"ExplicitComponents" = 8,
    @"KeyActions" = 16,
    @"KeyBehaviors" = 32,
    @"VirtualMods" = 64,
    @"VirtualModMap" = 128,
};

pub const SetMapFlags = extern enum(c_uint) {
    @"ResizeTypes" = 1,
    @"RecomputeActions" = 2,
};

pub const StatePart = extern enum(c_uint) {
    @"ModifierState" = 1,
    @"ModifierBase" = 2,
    @"ModifierLatch" = 4,
    @"ModifierLock" = 8,
    @"GroupState" = 16,
    @"GroupBase" = 32,
    @"GroupLatch" = 64,
    @"GroupLock" = 128,
    @"CompatState" = 256,
    @"GrabMods" = 512,
    @"CompatGrabMods" = 1024,
    @"LookupMods" = 2048,
    @"CompatLookupMods" = 4096,
    @"PointerButtons" = 8192,
};

pub const BoolCtrl = extern enum(c_uint) {
    @"RepeatKeys" = 1,
    @"SlowKeys" = 2,
    @"BounceKeys" = 4,
    @"StickyKeys" = 8,
    @"MouseKeys" = 16,
    @"MouseKeysAccel" = 32,
    @"AccessXKeys" = 64,
    @"AccessXTimeoutMask" = 128,
    @"AccessXFeedbackMask" = 256,
    @"AudibleBellMask" = 512,
    @"Overlay1Mask" = 1024,
    @"Overlay2Mask" = 2048,
    @"IgnoreGroupLockMask" = 4096,
};

pub const Control = extern enum(c_uint) {
    @"GroupsWrap" = 134217728,
    @"InternalMods" = 268435456,
    @"IgnoreLockMods" = 536870912,
    @"PerKeyRepeat" = 1073741824,
    @"ControlsEnabled" = 2147483648,
};

pub const AXOption = extern enum(c_uint) {
    @"SKPressFB" = 1,
    @"SKAcceptFB" = 2,
    @"FeatureFB" = 4,
    @"SlowWarnFB" = 8,
    @"IndicatorFB" = 16,
    @"StickyKeysFB" = 32,
    @"TwoKeys" = 64,
    @"LatchToLock" = 128,
    @"SKReleaseFB" = 256,
    @"SKRejectFB" = 512,
    @"BKRejectFB" = 1024,
    @"DumbBell" = 2048,
};

pub const DeviceSpec = u16;

pub const LedClassResult = extern enum(c_uint) {
    @"KbdFeedbackClass" = 0,
    @"LedFeedbackClass" = 4,
};

pub const LedClass = extern enum(c_uint) {
    @"KbdFeedbackClass" = 0,
    @"LedFeedbackClass" = 4,
    @"DfltXIClass" = 768,
    @"AllXIClasses" = 1280,
};

pub const LedClassSpec = u16;

pub const BellClassResult = extern enum(c_uint) {
    @"KbdFeedbackClass" = 0,
    @"BellFeedbackClass" = 5,
};

pub const BellClass = extern enum(c_uint) {
    @"KbdFeedbackClass" = 0,
    @"BellFeedbackClass" = 5,
    @"DfltXIClass" = 768,
};

pub const BellClassSpec = u16;

pub const ID = extern enum(c_uint) {
    @"UseCoreKbd" = 256,
    @"UseCorePtr" = 512,
    @"DfltXIClass" = 768,
    @"DfltXIId" = 1024,
    @"AllXIClass" = 1280,
    @"AllXIId" = 1536,
    @"XINone" = 65280,
};

pub const IDSpec = u16;

pub const Group = extern enum(c_uint) {
    @"1" = 0,
    @"2" = 1,
    @"3" = 2,
    @"4" = 3,
};

pub const Groups = extern enum(c_uint) {
    @"Any" = 254,
    @"All" = 255,
};

pub const SetOfGroup = extern enum(c_uint) {
    @"Group1" = 1,
    @"Group2" = 2,
    @"Group3" = 4,
    @"Group4" = 8,
};

pub const SetOfGroups = extern enum(c_uint) {
    @"Any" = 128,
};

pub const GroupsWrap = extern enum(c_uint) {
    @"WrapIntoRange" = 0,
    @"ClampIntoRange" = 64,
    @"RedirectIntoRange" = 128,
};

pub const VModsHigh = extern enum(c_uint) {
    @"15" = 128,
    @"14" = 64,
    @"13" = 32,
    @"12" = 16,
    @"11" = 8,
    @"10" = 4,
    @"9" = 2,
    @"8" = 1,
};

pub const VModsLow = extern enum(c_uint) {
    @"7" = 128,
    @"6" = 64,
    @"5" = 32,
    @"4" = 16,
    @"3" = 8,
    @"2" = 4,
    @"1" = 2,
    @"0" = 1,
};

pub const VMod = extern enum(c_uint) {
    @"15" = 32768,
    @"14" = 16384,
    @"13" = 8192,
    @"12" = 4096,
    @"11" = 2048,
    @"10" = 1024,
    @"9" = 512,
    @"8" = 256,
    @"7" = 128,
    @"6" = 64,
    @"5" = 32,
    @"4" = 16,
    @"3" = 8,
    @"2" = 4,
    @"1" = 2,
    @"0" = 1,
};

pub const Explicit = extern enum(c_uint) {
    @"VModMap" = 128,
    @"Behavior" = 64,
    @"AutoRepeat" = 32,
    @"Interpret" = 16,
    @"KeyType4" = 8,
    @"KeyType3" = 4,
    @"KeyType2" = 2,
    @"KeyType1" = 1,
};

pub const SymInterpretMatch = extern enum(c_uint) {
    @"NoneOf" = 0,
    @"AnyOfOrNone" = 1,
    @"AnyOf" = 2,
    @"AllOf" = 3,
    @"Exactly" = 4,
};

pub const SymInterpMatch = extern enum(c_uint) {
    @"LevelOneOnly" = 128,
    @"OpMask" = 127,
};

pub const IMFlag = extern enum(c_uint) {
    @"NoExplicit" = 128,
    @"NoAutomatic" = 64,
    @"LEDDrivesKB" = 32,
};

pub const IMModsWhich = extern enum(c_uint) {
    @"UseCompat" = 16,
    @"UseEffective" = 8,
    @"UseLocked" = 4,
    @"UseLatched" = 2,
    @"UseBase" = 1,
};

pub const IMGroupsWhich = extern enum(c_uint) {
    @"UseCompat" = 16,
    @"UseEffective" = 8,
    @"UseLocked" = 4,
    @"UseLatched" = 2,
    @"UseBase" = 1,
};

/// @brief IndicatorMap
pub const IndicatorMap = struct {
    @"flags": u8,
    @"whichGroups": u8,
    @"groups": u8,
    @"whichMods": u8,
    @"mods": u8,
    @"realMods": u8,
    @"vmods": u16,
    @"ctrls": u32,
};

pub const CMDetail = extern enum(c_uint) {
    @"SymInterp" = 1,
    @"GroupCompat" = 2,
};

pub const NameDetail = extern enum(c_uint) {
    @"Keycodes" = 1,
    @"Geometry" = 2,
    @"Symbols" = 4,
    @"PhysSymbols" = 8,
    @"Types" = 16,
    @"Compat" = 32,
    @"KeyTypeNames" = 64,
    @"KTLevelNames" = 128,
    @"IndicatorNames" = 256,
    @"KeyNames" = 512,
    @"KeyAliases" = 1024,
    @"VirtualModNames" = 2048,
    @"GroupNames" = 4096,
    @"RGNames" = 8192,
};

pub const GBNDetail = extern enum(c_uint) {
    @"Types" = 1,
    @"CompatMap" = 2,
    @"ClientSymbols" = 4,
    @"ServerSymbols" = 8,
    @"IndicatorMaps" = 16,
    @"KeyNames" = 32,
    @"Geometry" = 64,
    @"OtherNames" = 128,
};

pub const XIFeature = extern enum(c_uint) {
    @"Keyboards" = 1,
    @"ButtonActions" = 2,
    @"IndicatorNames" = 4,
    @"IndicatorMaps" = 8,
    @"IndicatorState" = 16,
};

pub const PerClientFlag = extern enum(c_uint) {
    @"DetectableAutoRepeat" = 1,
    @"GrabsUseXKBState" = 2,
    @"AutoResetControls" = 4,
    @"LookupStateWhenGrabbed" = 8,
    @"SendEventUsesXKBState" = 16,
};

/// @brief ModDef
pub const ModDef = struct {
    @"mask": u8,
    @"realMods": u8,
    @"vmods": u16,
};

/// @brief KeyName
pub const KeyName = struct {
    @"name": [4]u8,
};

/// @brief KeyAlias
pub const KeyAlias = struct {
    @"real": [4]u8,
    @"alias": [4]u8,
};

/// @brief CountedString16
pub const CountedString16 = struct {
    @"length": u16,
    @"string": []u8,
    @"alignment_pad": []u8,
};

/// @brief KTMapEntry
pub const KTMapEntry = struct {
    @"active": u8,
    @"mods_mask": u8,
    @"level": u8,
    @"mods_mods": u8,
    @"mods_vmods": u16,
    @"pad0": [2]u8,
};

/// @brief KeyType
pub const KeyType = struct {
    @"mods_mask": u8,
    @"mods_mods": u8,
    @"mods_vmods": u16,
    @"numLevels": u8,
    @"nMapEntries": u8,
    @"hasPreserve": u8,
    @"pad0": u8,
    @"map": []xcb.xkb.KTMapEntry,
    @"preserve": []xcb.xkb.ModDef,
};

/// @brief KeySymMap
pub const KeySymMap = struct {
    @"kt_index": [4]u8,
    @"groupInfo": u8,
    @"width": u8,
    @"nSyms": u16,
    @"syms": []xcb.KEYSYM,
};

/// @brief CommonBehavior
pub const CommonBehavior = struct {
    @"type": u8,
    @"data": u8,
};

/// @brief DefaultBehavior
pub const DefaultBehavior = struct {
    @"type": u8,
    @"pad0": u8,
};

/// @brief LockBehavior
pub const LockBehavior = struct {
    @"type": u8,
    @"pad0": u8,
};

/// @brief RadioGroupBehavior
pub const RadioGroupBehavior = struct {
    @"type": u8,
    @"group": u8,
};

/// @brief OverlayBehavior
pub const OverlayBehavior = struct {
    @"type": u8,
    @"key": xcb.KEYCODE,
};

/// @brief PermamentLockBehavior
pub const PermamentLockBehavior = struct {
    @"type": u8,
    @"pad0": u8,
};

/// @brief PermamentRadioGroupBehavior
pub const PermamentRadioGroupBehavior = struct {
    @"type": u8,
    @"group": u8,
};

/// @brief PermamentOverlayBehavior
pub const PermamentOverlayBehavior = struct {
    @"type": u8,
    @"key": xcb.KEYCODE,
};

/// @brief Behavior
pub const Behavior = union {
    @"common": xcb.xkb.CommonBehavior,
    @"default": xcb.xkb.DefaultBehavior,
    @"lock": xcb.xkb.LockBehavior,
    @"radioGroup": xcb.xkb.RadioGroupBehavior,
    @"overlay1": xcb.xkb.OverlayBehavior,
    @"overlay2": xcb.xkb.OverlayBehavior,
    @"permamentLock": xcb.xkb.PermamentLockBehavior,
    @"permamentRadioGroup": xcb.xkb.PermamentRadioGroupBehavior,
    @"permamentOverlay1": xcb.xkb.PermamentOverlayBehavior,
    @"permamentOverlay2": xcb.xkb.PermamentOverlayBehavior,
    @"type": u8,
};

pub const BehaviorType = extern enum(c_uint) {
    @"Default" = 0,
    @"Lock" = 1,
    @"RadioGroup" = 2,
    @"Overlay1" = 3,
    @"Overlay2" = 4,
    @"PermamentLock" = 129,
    @"PermamentRadioGroup" = 130,
    @"PermamentOverlay1" = 131,
    @"PermamentOverlay2" = 132,
};

/// @brief SetBehavior
pub const SetBehavior = struct {
    @"keycode": xcb.KEYCODE,
    @"behavior": xcb.xkb.Behavior,
    @"pad0": u8,
};

/// @brief SetExplicit
pub const SetExplicit = struct {
    @"keycode": xcb.KEYCODE,
    @"explicit": u8,
};

/// @brief KeyModMap
pub const KeyModMap = struct {
    @"keycode": xcb.KEYCODE,
    @"mods": u8,
};

/// @brief KeyVModMap
pub const KeyVModMap = struct {
    @"keycode": xcb.KEYCODE,
    @"pad0": u8,
    @"vmods": u16,
};

/// @brief KTSetMapEntry
pub const KTSetMapEntry = struct {
    @"level": u8,
    @"realMods": u8,
    @"virtualMods": u16,
};

/// @brief SetKeyType
pub const SetKeyType = struct {
    @"mask": u8,
    @"realMods": u8,
    @"virtualMods": u16,
    @"numLevels": u8,
    @"nMapEntries": u8,
    @"preserve": u8,
    @"pad0": u8,
    @"entries": []xcb.xkb.KTSetMapEntry,
    @"preserve_entries": []xcb.xkb.KTSetMapEntry,
};

pub const STRING8 = u8;

/// @brief Outline
pub const Outline = struct {
    @"nPoints": u8,
    @"cornerRadius": u8,
    @"pad0": [2]u8,
    @"points": []xcb.POINT,
};

/// @brief Shape
pub const Shape = struct {
    @"name": xcb.ATOM,
    @"nOutlines": u8,
    @"primaryNdx": u8,
    @"approxNdx": u8,
    @"pad0": u8,
    @"outlines": []xcb.xkb.Outline,
};

/// @brief Key
pub const Key = struct {
    @"name": [4]xcb.xkb.STRING8,
    @"gap": i16,
    @"shapeNdx": u8,
    @"colorNdx": u8,
};

/// @brief OverlayKey
pub const OverlayKey = struct {
    @"over": [4]xcb.xkb.STRING8,
    @"under": [4]xcb.xkb.STRING8,
};

/// @brief OverlayRow
pub const OverlayRow = struct {
    @"rowUnder": u8,
    @"nKeys": u8,
    @"pad0": [2]u8,
    @"keys": []xcb.xkb.OverlayKey,
};

/// @brief Overlay
pub const Overlay = struct {
    @"name": xcb.ATOM,
    @"nRows": u8,
    @"pad0": [3]u8,
    @"rows": []xcb.xkb.OverlayRow,
};

/// @brief Row
pub const Row = struct {
    @"top": i16,
    @"left": i16,
    @"nKeys": u8,
    @"vertical": u8,
    @"pad0": [2]u8,
    @"keys": []xcb.xkb.Key,
};

pub const DoodadType = extern enum(c_uint) {
    @"Outline" = 1,
    @"Solid" = 2,
    @"Text" = 3,
    @"Indicator" = 4,
    @"Logo" = 5,
};

/// @brief Listing
pub const Listing = struct {
    @"flags": u16,
    @"length": u16,
    @"string": []xcb.xkb.STRING8,
};

/// @brief DeviceLedInfo
pub const DeviceLedInfo = struct {
    @"ledClass": xcb.xkb.LedClassSpec,
    @"ledID": xcb.xkb.IDSpec,
    @"namesPresent": u32,
    @"mapsPresent": u32,
    @"physIndicators": u32,
    @"state": u32,
    @"names": []xcb.ATOM,
    @"maps": []xcb.xkb.IndicatorMap,
};

pub const Error = extern enum(c_uint) {
    @"BadDevice" = 255,
    @"BadClass" = 254,
    @"BadId" = 253,
};

/// Opcode for Keyboard.
pub const KeyboardOpcode = 0;

/// @brief KeyboardError
pub const KeyboardError = struct {
    @"response_type": u8,
    @"error_code": u8,
    @"sequence": u16,
    @"value": u32,
    @"minorOpcode": u16,
    @"majorOpcode": u8,
    @"pad0": [21]u8,
};

pub const SA = extern enum(c_uint) {
    @"ClearLocks" = 1,
    @"LatchToLock" = 2,
    @"UseModMapMods" = 4,
    @"GroupAbsolute" = 4,
};

pub const SAType = extern enum(c_uint) {
    @"NoAction" = 0,
    @"SetMods" = 1,
    @"LatchMods" = 2,
    @"LockMods" = 3,
    @"SetGroup" = 4,
    @"LatchGroup" = 5,
    @"LockGroup" = 6,
    @"MovePtr" = 7,
    @"PtrBtn" = 8,
    @"LockPtrBtn" = 9,
    @"SetPtrDflt" = 10,
    @"ISOLock" = 11,
    @"Terminate" = 12,
    @"SwitchScreen" = 13,
    @"SetControls" = 14,
    @"LockControls" = 15,
    @"ActionMessage" = 16,
    @"RedirectKey" = 17,
    @"DeviceBtn" = 18,
    @"LockDeviceBtn" = 19,
    @"DeviceValuator" = 20,
};

/// @brief SANoAction
pub const SANoAction = struct {
    @"type": u8,
    @"pad0": [7]u8,
};

/// @brief SASetMods
pub const SASetMods = struct {
    @"type": u8,
    @"flags": u8,
    @"mask": u8,
    @"realMods": u8,
    @"vmodsHigh": u8,
    @"vmodsLow": u8,
    @"pad0": [2]u8,
};

/// @brief SALatchMods
pub const SALatchMods = struct {
    @"type": u8,
    @"flags": u8,
    @"mask": u8,
    @"realMods": u8,
    @"vmodsHigh": u8,
    @"vmodsLow": u8,
    @"pad0": [2]u8,
};

/// @brief SALockMods
pub const SALockMods = struct {
    @"type": u8,
    @"flags": u8,
    @"mask": u8,
    @"realMods": u8,
    @"vmodsHigh": u8,
    @"vmodsLow": u8,
    @"pad0": [2]u8,
};

/// @brief SASetGroup
pub const SASetGroup = struct {
    @"type": u8,
    @"flags": u8,
    @"group": i8,
    @"pad0": [5]u8,
};

/// @brief SALatchGroup
pub const SALatchGroup = struct {
    @"type": u8,
    @"flags": u8,
    @"group": i8,
    @"pad0": [5]u8,
};

/// @brief SALockGroup
pub const SALockGroup = struct {
    @"type": u8,
    @"flags": u8,
    @"group": i8,
    @"pad0": [5]u8,
};

pub const SAMovePtrFlag = extern enum(c_uint) {
    @"NoAcceleration" = 1,
    @"MoveAbsoluteX" = 2,
    @"MoveAbsoluteY" = 4,
};

/// @brief SAMovePtr
pub const SAMovePtr = struct {
    @"type": u8,
    @"flags": u8,
    @"xHigh": i8,
    @"xLow": u8,
    @"yHigh": i8,
    @"yLow": u8,
    @"pad0": [2]u8,
};

/// @brief SAPtrBtn
pub const SAPtrBtn = struct {
    @"type": u8,
    @"flags": u8,
    @"count": u8,
    @"button": u8,
    @"pad0": [4]u8,
};

/// @brief SALockPtrBtn
pub const SALockPtrBtn = struct {
    @"type": u8,
    @"flags": u8,
    @"pad0": u8,
    @"button": u8,
    @"pad1": [4]u8,
};

pub const SASetPtrDfltFlag = extern enum(c_uint) {
    @"DfltBtnAbsolute" = 4,
    @"AffectDfltButton" = 1,
};

/// @brief SASetPtrDflt
pub const SASetPtrDflt = struct {
    @"type": u8,
    @"flags": u8,
    @"affect": u8,
    @"value": i8,
    @"pad0": [4]u8,
};

pub const SAIsoLockFlag = extern enum(c_uint) {
    @"NoLock" = 1,
    @"NoUnlock" = 2,
    @"UseModMapMods" = 4,
    @"GroupAbsolute" = 4,
    @"ISODfltIsGroup" = 8,
};

pub const SAIsoLockNoAffect = extern enum(c_uint) {
    @"Ctrls" = 8,
    @"Ptr" = 16,
    @"Group" = 32,
    @"Mods" = 64,
};

/// @brief SAIsoLock
pub const SAIsoLock = struct {
    @"type": u8,
    @"flags": u8,
    @"mask": u8,
    @"realMods": u8,
    @"group": i8,
    @"affect": u8,
    @"vmodsHigh": u8,
    @"vmodsLow": u8,
};

/// @brief SATerminate
pub const SATerminate = struct {
    @"type": u8,
    @"pad0": [7]u8,
};

pub const SwitchScreenFlag = extern enum(c_uint) {
    @"Application" = 1,
    @"Absolute" = 4,
};

/// @brief SASwitchScreen
pub const SASwitchScreen = struct {
    @"type": u8,
    @"flags": u8,
    @"newScreen": i8,
    @"pad0": [5]u8,
};

pub const BoolCtrlsHigh = extern enum(c_uint) {
    @"AccessXFeedback" = 1,
    @"AudibleBell" = 2,
    @"Overlay1" = 4,
    @"Overlay2" = 8,
    @"IgnoreGroupLock" = 16,
};

pub const BoolCtrlsLow = extern enum(c_uint) {
    @"RepeatKeys" = 1,
    @"SlowKeys" = 2,
    @"BounceKeys" = 4,
    @"StickyKeys" = 8,
    @"MouseKeys" = 16,
    @"MouseKeysAccel" = 32,
    @"AccessXKeys" = 64,
    @"AccessXTimeout" = 128,
};

/// @brief SASetControls
pub const SASetControls = struct {
    @"type": u8,
    @"pad0": [3]u8,
    @"boolCtrlsHigh": u8,
    @"boolCtrlsLow": u8,
    @"pad1": [2]u8,
};

/// @brief SALockControls
pub const SALockControls = struct {
    @"type": u8,
    @"pad0": [3]u8,
    @"boolCtrlsHigh": u8,
    @"boolCtrlsLow": u8,
    @"pad1": [2]u8,
};

pub const ActionMessageFlag = extern enum(c_uint) {
    @"OnPress" = 1,
    @"OnRelease" = 2,
    @"GenKeyEvent" = 4,
};

/// @brief SAActionMessage
pub const SAActionMessage = struct {
    @"type": u8,
    @"flags": u8,
    @"message": [6]u8,
};

/// @brief SARedirectKey
pub const SARedirectKey = struct {
    @"type": u8,
    @"newkey": xcb.KEYCODE,
    @"mask": u8,
    @"realModifiers": u8,
    @"vmodsMaskHigh": u8,
    @"vmodsMaskLow": u8,
    @"vmodsHigh": u8,
    @"vmodsLow": u8,
};

/// @brief SADeviceBtn
pub const SADeviceBtn = struct {
    @"type": u8,
    @"flags": u8,
    @"count": u8,
    @"button": u8,
    @"device": u8,
    @"pad0": [3]u8,
};

pub const LockDeviceFlags = extern enum(c_uint) {
    @"NoLock" = 1,
    @"NoUnlock" = 2,
};

/// @brief SALockDeviceBtn
pub const SALockDeviceBtn = struct {
    @"type": u8,
    @"flags": u8,
    @"pad0": u8,
    @"button": u8,
    @"device": u8,
    @"pad1": [3]u8,
};

pub const SAValWhat = extern enum(c_uint) {
    @"IgnoreVal" = 0,
    @"SetValMin" = 1,
    @"SetValCenter" = 2,
    @"SetValMax" = 3,
    @"SetValRelative" = 4,
    @"SetValAbsolute" = 5,
};

/// @brief SADeviceValuator
pub const SADeviceValuator = struct {
    @"type": u8,
    @"device": u8,
    @"val1what": u8,
    @"val1index": u8,
    @"val1value": u8,
    @"val2what": u8,
    @"val2index": u8,
    @"val2value": u8,
};

/// @brief SIAction
pub const SIAction = struct {
    @"type": u8,
    @"data": [7]u8,
};

/// @brief SymInterpret
pub const SymInterpret = struct {
    @"sym": xcb.KEYSYM,
    @"mods": u8,
    @"match": u8,
    @"virtualMod": u8,
    @"flags": u8,
    @"action": xcb.xkb.SIAction,
};

/// @brief Action
pub const Action = union {
    @"noaction": xcb.xkb.SANoAction,
    @"setmods": xcb.xkb.SASetMods,
    @"latchmods": xcb.xkb.SALatchMods,
    @"lockmods": xcb.xkb.SALockMods,
    @"setgroup": xcb.xkb.SASetGroup,
    @"latchgroup": xcb.xkb.SALatchGroup,
    @"lockgroup": xcb.xkb.SALockGroup,
    @"moveptr": xcb.xkb.SAMovePtr,
    @"ptrbtn": xcb.xkb.SAPtrBtn,
    @"lockptrbtn": xcb.xkb.SALockPtrBtn,
    @"setptrdflt": xcb.xkb.SASetPtrDflt,
    @"isolock": xcb.xkb.SAIsoLock,
    @"terminate": xcb.xkb.SATerminate,
    @"switchscreen": xcb.xkb.SASwitchScreen,
    @"setcontrols": xcb.xkb.SASetControls,
    @"lockcontrols": xcb.xkb.SALockControls,
    @"message": xcb.xkb.SAActionMessage,
    @"redirect": xcb.xkb.SARedirectKey,
    @"devbtn": xcb.xkb.SADeviceBtn,
    @"lockdevbtn": xcb.xkb.SALockDeviceBtn,
    @"devval": xcb.xkb.SADeviceValuator,
    @"type": u8,
};

/// @brief UseExtensioncookie
pub const UseExtensioncookie = struct {
    sequence: c_uint,
};

/// @brief UseExtensionRequest
pub const UseExtensionRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 0,
    @"length": u16,
    @"wantedMajor": u16,
    @"wantedMinor": u16,
};

/// @brief UseExtensionReply
pub const UseExtensionReply = struct {
    @"response_type": u8,
    @"supported": u8,
    @"sequence": u16,
    @"length": u32,
    @"serverMajor": u16,
    @"serverMinor": u16,
    @"pad0": [20]u8,
};

/// @brief SelectEventsRequest
pub const SelectEventsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 1,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"affectWhich": u16,
    @"clear": u16,
    @"selectAll": u16,
    @"affectMap": u16,
    @"map": u16,
};

/// @brief BellRequest
pub const BellRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 3,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"bellClass": xcb.xkb.BellClassSpec,
    @"bellID": xcb.xkb.IDSpec,
    @"percent": i8,
    @"forceSound": u8,
    @"eventOnly": u8,
    @"pad0": u8,
    @"pitch": i16,
    @"duration": i16,
    @"pad1": [2]u8,
    @"name": xcb.ATOM,
    @"window": xcb.WINDOW,
};

/// @brief GetStatecookie
pub const GetStatecookie = struct {
    sequence: c_uint,
};

/// @brief GetStateRequest
pub const GetStateRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 4,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": [2]u8,
};

/// @brief GetStateReply
pub const GetStateReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"mods": u8,
    @"baseMods": u8,
    @"latchedMods": u8,
    @"lockedMods": u8,
    @"group": u8,
    @"lockedGroup": u8,
    @"baseGroup": i16,
    @"latchedGroup": i16,
    @"compatState": u8,
    @"grabMods": u8,
    @"compatGrabMods": u8,
    @"lookupMods": u8,
    @"compatLookupMods": u8,
    @"pad0": u8,
    @"ptrBtnState": u16,
    @"pad1": [6]u8,
};

/// @brief LatchLockStateRequest
pub const LatchLockStateRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 5,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"affectModLocks": u8,
    @"modLocks": u8,
    @"lockGroup": u8,
    @"groupLock": u8,
    @"affectModLatches": u8,
    @"pad0": u8,
    @"pad1": u8,
    @"latchGroup": u8,
    @"groupLatch": u16,
};

/// @brief GetControlscookie
pub const GetControlscookie = struct {
    sequence: c_uint,
};

/// @brief GetControlsRequest
pub const GetControlsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 6,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": [2]u8,
};

/// @brief GetControlsReply
pub const GetControlsReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"mouseKeysDfltBtn": u8,
    @"numGroups": u8,
    @"groupsWrap": u8,
    @"internalModsMask": u8,
    @"ignoreLockModsMask": u8,
    @"internalModsRealMods": u8,
    @"ignoreLockModsRealMods": u8,
    @"pad0": u8,
    @"internalModsVmods": u16,
    @"ignoreLockModsVmods": u16,
    @"repeatDelay": u16,
    @"repeatInterval": u16,
    @"slowKeysDelay": u16,
    @"debounceDelay": u16,
    @"mouseKeysDelay": u16,
    @"mouseKeysInterval": u16,
    @"mouseKeysTimeToMax": u16,
    @"mouseKeysMaxSpeed": u16,
    @"mouseKeysCurve": i16,
    @"accessXOption": u16,
    @"accessXTimeout": u16,
    @"accessXTimeoutOptionsMask": u16,
    @"accessXTimeoutOptionsValues": u16,
    @"pad1": [2]u8,
    @"accessXTimeoutMask": u32,
    @"accessXTimeoutValues": u32,
    @"enabledControls": u32,
    @"perKeyRepeat": [32]u8,
};

/// @brief SetControlsRequest
pub const SetControlsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 7,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"affectInternalRealMods": u8,
    @"internalRealMods": u8,
    @"affectIgnoreLockRealMods": u8,
    @"ignoreLockRealMods": u8,
    @"affectInternalVirtualMods": u16,
    @"internalVirtualMods": u16,
    @"affectIgnoreLockVirtualMods": u16,
    @"ignoreLockVirtualMods": u16,
    @"mouseKeysDfltBtn": u8,
    @"groupsWrap": u8,
    @"accessXOptions": u16,
    @"pad0": [2]u8,
    @"affectEnabledControls": u32,
    @"enabledControls": u32,
    @"changeControls": u32,
    @"repeatDelay": u16,
    @"repeatInterval": u16,
    @"slowKeysDelay": u16,
    @"debounceDelay": u16,
    @"mouseKeysDelay": u16,
    @"mouseKeysInterval": u16,
    @"mouseKeysTimeToMax": u16,
    @"mouseKeysMaxSpeed": u16,
    @"mouseKeysCurve": i16,
    @"accessXTimeout": u16,
    @"accessXTimeoutMask": u32,
    @"accessXTimeoutValues": u32,
    @"accessXTimeoutOptionsMask": u16,
    @"accessXTimeoutOptionsValues": u16,
    @"perKeyRepeat": [32]u8,
};

/// @brief GetMapcookie
pub const GetMapcookie = struct {
    sequence: c_uint,
};

/// @brief GetMapRequest
pub const GetMapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 8,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"full": u16,
    @"partial": u16,
    @"firstType": u8,
    @"nTypes": u8,
    @"firstKeySym": xcb.KEYCODE,
    @"nKeySyms": u8,
    @"firstKeyAction": xcb.KEYCODE,
    @"nKeyActions": u8,
    @"firstKeyBehavior": xcb.KEYCODE,
    @"nKeyBehaviors": u8,
    @"virtualMods": u16,
    @"firstKeyExplicit": xcb.KEYCODE,
    @"nKeyExplicit": u8,
    @"firstModMapKey": xcb.KEYCODE,
    @"nModMapKeys": u8,
    @"firstVModMapKey": xcb.KEYCODE,
    @"nVModMapKeys": u8,
    @"pad0": [2]u8,
};

/// @brief GetMapReply
pub const GetMapReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"pad0": [2]u8,
    @"minKeyCode": xcb.KEYCODE,
    @"maxKeyCode": xcb.KEYCODE,
    @"present": u16,
    @"firstType": u8,
    @"nTypes": u8,
    @"totalTypes": u8,
    @"firstKeySym": xcb.KEYCODE,
    @"totalSyms": u16,
    @"nKeySyms": u8,
    @"firstKeyAction": xcb.KEYCODE,
    @"totalActions": u16,
    @"nKeyActions": u8,
    @"firstKeyBehavior": xcb.KEYCODE,
    @"nKeyBehaviors": u8,
    @"totalKeyBehaviors": u8,
    @"firstKeyExplicit": xcb.KEYCODE,
    @"nKeyExplicit": u8,
    @"totalKeyExplicit": u8,
    @"firstModMapKey": xcb.KEYCODE,
    @"nModMapKeys": u8,
    @"totalModMapKeys": u8,
    @"firstVModMapKey": xcb.KEYCODE,
    @"nVModMapKeys": u8,
    @"totalVModMapKeys": u8,
    @"pad1": u8,
    @"virtualMods": u16,
};

/// @brief SetMapRequest
pub const SetMapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 9,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"present": u16,
    @"flags": u16,
    @"minKeyCode": xcb.KEYCODE,
    @"maxKeyCode": xcb.KEYCODE,
    @"firstType": u8,
    @"nTypes": u8,
    @"firstKeySym": xcb.KEYCODE,
    @"nKeySyms": u8,
    @"totalSyms": u16,
    @"firstKeyAction": xcb.KEYCODE,
    @"nKeyActions": u8,
    @"totalActions": u16,
    @"firstKeyBehavior": xcb.KEYCODE,
    @"nKeyBehaviors": u8,
    @"totalKeyBehaviors": u8,
    @"firstKeyExplicit": xcb.KEYCODE,
    @"nKeyExplicit": u8,
    @"totalKeyExplicit": u8,
    @"firstModMapKey": xcb.KEYCODE,
    @"nModMapKeys": u8,
    @"totalModMapKeys": u8,
    @"firstVModMapKey": xcb.KEYCODE,
    @"nVModMapKeys": u8,
    @"totalVModMapKeys": u8,
    @"virtualMods": u16,
};

/// @brief GetCompatMapcookie
pub const GetCompatMapcookie = struct {
    sequence: c_uint,
};

/// @brief GetCompatMapRequest
pub const GetCompatMapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 10,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"groups": u8,
    @"getAllSI": u8,
    @"firstSI": u16,
    @"nSI": u16,
};

/// @brief GetCompatMapReply
pub const GetCompatMapReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"groupsRtrn": u8,
    @"pad0": u8,
    @"firstSIRtrn": u16,
    @"nSIRtrn": u16,
    @"nTotalSI": u16,
    @"pad1": [16]u8,
    @"si_rtrn": []xcb.xkb.SymInterpret,
    @"group_rtrn": []xcb.xkb.ModDef,
};

/// @brief SetCompatMapRequest
pub const SetCompatMapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 11,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": u8,
    @"recomputeActions": u8,
    @"truncateSI": u8,
    @"groups": u8,
    @"firstSI": u16,
    @"nSI": u16,
    @"pad1": [2]u8,
    @"si": []const xcb.xkb.SymInterpret,
    @"groupMaps": []const xcb.xkb.ModDef,
};

/// @brief GetIndicatorStatecookie
pub const GetIndicatorStatecookie = struct {
    sequence: c_uint,
};

/// @brief GetIndicatorStateRequest
pub const GetIndicatorStateRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 12,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": [2]u8,
};

/// @brief GetIndicatorStateReply
pub const GetIndicatorStateReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"state": u32,
    @"pad0": [20]u8,
};

/// @brief GetIndicatorMapcookie
pub const GetIndicatorMapcookie = struct {
    sequence: c_uint,
};

/// @brief GetIndicatorMapRequest
pub const GetIndicatorMapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 13,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": [2]u8,
    @"which": u32,
};

/// @brief GetIndicatorMapReply
pub const GetIndicatorMapReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"which": u32,
    @"realIndicators": u32,
    @"nIndicators": u8,
    @"pad0": [15]u8,
    @"maps": []xcb.xkb.IndicatorMap,
};

/// @brief SetIndicatorMapRequest
pub const SetIndicatorMapRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 14,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": [2]u8,
    @"which": u32,
    @"maps": []const xcb.xkb.IndicatorMap,
};

/// @brief GetNamedIndicatorcookie
pub const GetNamedIndicatorcookie = struct {
    sequence: c_uint,
};

/// @brief GetNamedIndicatorRequest
pub const GetNamedIndicatorRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 15,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"ledClass": xcb.xkb.LedClassSpec,
    @"ledID": xcb.xkb.IDSpec,
    @"pad0": [2]u8,
    @"indicator": xcb.ATOM,
};

/// @brief GetNamedIndicatorReply
pub const GetNamedIndicatorReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"indicator": xcb.ATOM,
    @"found": u8,
    @"on": u8,
    @"realIndicator": u8,
    @"ndx": u8,
    @"map_flags": u8,
    @"map_whichGroups": u8,
    @"map_groups": u8,
    @"map_whichMods": u8,
    @"map_mods": u8,
    @"map_realMods": u8,
    @"map_vmod": u16,
    @"map_ctrls": u32,
    @"supported": u8,
    @"pad0": [3]u8,
};

/// @brief SetNamedIndicatorRequest
pub const SetNamedIndicatorRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 16,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"ledClass": xcb.xkb.LedClassSpec,
    @"ledID": xcb.xkb.IDSpec,
    @"pad0": [2]u8,
    @"indicator": xcb.ATOM,
    @"setState": u8,
    @"on": u8,
    @"setMap": u8,
    @"createMap": u8,
    @"pad1": u8,
    @"map_flags": u8,
    @"map_whichGroups": u8,
    @"map_groups": u8,
    @"map_whichMods": u8,
    @"map_realMods": u8,
    @"map_vmods": u16,
    @"map_ctrls": u32,
};

/// @brief GetNamescookie
pub const GetNamescookie = struct {
    sequence: c_uint,
};

/// @brief GetNamesRequest
pub const GetNamesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 17,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": [2]u8,
    @"which": u32,
};

/// @brief GetNamesReply
pub const GetNamesReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"which": u32,
    @"minKeyCode": xcb.KEYCODE,
    @"maxKeyCode": xcb.KEYCODE,
    @"nTypes": u8,
    @"groupNames": u8,
    @"virtualMods": u16,
    @"firstKey": xcb.KEYCODE,
    @"nKeys": u8,
    @"indicators": u32,
    @"nRadioGroups": u8,
    @"nKeyAliases": u8,
    @"nKTLevels": u16,
    @"pad0": [4]u8,
};

/// @brief SetNamesRequest
pub const SetNamesRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 18,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"virtualMods": u16,
    @"which": u32,
    @"firstType": u8,
    @"nTypes": u8,
    @"firstKTLevelt": u8,
    @"nKTLevels": u8,
    @"indicators": u32,
    @"groupNames": u8,
    @"nRadioGroups": u8,
    @"firstKey": xcb.KEYCODE,
    @"nKeys": u8,
    @"nKeyAliases": u8,
    @"pad0": u8,
    @"totalKTLevelNames": u16,
};

/// @brief PerClientFlagscookie
pub const PerClientFlagscookie = struct {
    sequence: c_uint,
};

/// @brief PerClientFlagsRequest
pub const PerClientFlagsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 21,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"pad0": [2]u8,
    @"change": u32,
    @"value": u32,
    @"ctrlsToChange": u32,
    @"autoCtrls": u32,
    @"autoCtrlsValues": u32,
};

/// @brief PerClientFlagsReply
pub const PerClientFlagsReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"supported": u32,
    @"value": u32,
    @"autoCtrls": u32,
    @"autoCtrlsValues": u32,
    @"pad0": [8]u8,
};

/// @brief ListComponentscookie
pub const ListComponentscookie = struct {
    sequence: c_uint,
};

/// @brief ListComponentsRequest
pub const ListComponentsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 22,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"maxNames": u16,
};

/// @brief ListComponentsReply
pub const ListComponentsReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"nKeymaps": u16,
    @"nKeycodes": u16,
    @"nTypes": u16,
    @"nCompatMaps": u16,
    @"nSymbols": u16,
    @"nGeometries": u16,
    @"extra": u16,
    @"pad0": [10]u8,
    @"keymaps": []xcb.xkb.Listing,
    @"keycodes": []xcb.xkb.Listing,
    @"types": []xcb.xkb.Listing,
    @"compatMaps": []xcb.xkb.Listing,
    @"symbols": []xcb.xkb.Listing,
    @"geometries": []xcb.xkb.Listing,
};

/// @brief GetKbdByNamecookie
pub const GetKbdByNamecookie = struct {
    sequence: c_uint,
};

/// @brief GetKbdByNameRequest
pub const GetKbdByNameRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 23,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"need": u16,
    @"want": u16,
    @"load": u8,
    @"pad0": u8,
};

/// @brief GetKbdByNameReply
pub const GetKbdByNameReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"minKeyCode": xcb.KEYCODE,
    @"maxKeyCode": xcb.KEYCODE,
    @"loaded": u8,
    @"newKeyboard": u8,
    @"found": u16,
    @"reported": u16,
    @"pad0": [16]u8,
};

/// @brief GetDeviceInfocookie
pub const GetDeviceInfocookie = struct {
    sequence: c_uint,
};

/// @brief GetDeviceInfoRequest
pub const GetDeviceInfoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 24,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"wanted": u16,
    @"allButtons": u8,
    @"firstButton": u8,
    @"nButtons": u8,
    @"pad0": u8,
    @"ledClass": xcb.xkb.LedClassSpec,
    @"ledID": xcb.xkb.IDSpec,
};

/// @brief GetDeviceInfoReply
pub const GetDeviceInfoReply = struct {
    @"response_type": u8,
    @"deviceID": u8,
    @"sequence": u16,
    @"length": u32,
    @"present": u16,
    @"supported": u16,
    @"unsupported": u16,
    @"nDeviceLedFBs": u16,
    @"firstBtnWanted": u8,
    @"nBtnsWanted": u8,
    @"firstBtnRtrn": u8,
    @"nBtnsRtrn": u8,
    @"totalBtns": u8,
    @"hasOwnState": u8,
    @"dfltKbdFB": u16,
    @"dfltLedFB": u16,
    @"pad0": [2]u8,
    @"devType": xcb.ATOM,
    @"nameLen": u16,
    @"name": []xcb.xkb.STRING8,
    @"btnActions": []xcb.xkb.Action,
    @"leds": []xcb.xkb.DeviceLedInfo,
};

/// @brief SetDeviceInfoRequest
pub const SetDeviceInfoRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 25,
    @"length": u16,
    @"deviceSpec": xcb.xkb.DeviceSpec,
    @"firstBtn": u8,
    @"nBtns": u8,
    @"change": u16,
    @"nDeviceLedFBs": u16,
    @"btnActions": []const xcb.xkb.Action,
    @"leds": []const xcb.xkb.DeviceLedInfo,
};

/// @brief SetDebuggingFlagscookie
pub const SetDebuggingFlagscookie = struct {
    sequence: c_uint,
};

/// @brief SetDebuggingFlagsRequest
pub const SetDebuggingFlagsRequest = struct {
    @"major_opcode": u8,
    @"minor_opcode": u8 = 101,
    @"length": u16,
    @"msgLength": u16,
    @"pad0": [2]u8,
    @"affectFlags": u32,
    @"flags": u32,
    @"affectCtrls": u32,
    @"ctrls": u32,
    @"message": []const xcb.xkb.STRING8,
};

/// @brief SetDebuggingFlagsReply
pub const SetDebuggingFlagsReply = struct {
    @"response_type": u8,
    @"pad0": u8,
    @"sequence": u16,
    @"length": u32,
    @"currentFlags": u32,
    @"currentCtrls": u32,
    @"supportedFlags": u32,
    @"supportedCtrls": u32,
    @"pad1": [8]u8,
};

/// Opcode for NewKeyboardNotify.
pub const NewKeyboardNotifyOpcode = 0;

/// @brief NewKeyboardNotifyEvent
pub const NewKeyboardNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"oldDeviceID": u8,
    @"minKeyCode": xcb.KEYCODE,
    @"maxKeyCode": xcb.KEYCODE,
    @"oldMinKeyCode": xcb.KEYCODE,
    @"oldMaxKeyCode": xcb.KEYCODE,
    @"requestMajor": u8,
    @"requestMinor": u8,
    @"changed": u16,
    @"pad0": [14]u8,
};

/// Opcode for MapNotify.
pub const MapNotifyOpcode = 1;

/// @brief MapNotifyEvent
pub const MapNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"ptrBtnActions": u8,
    @"changed": u16,
    @"minKeyCode": xcb.KEYCODE,
    @"maxKeyCode": xcb.KEYCODE,
    @"firstType": u8,
    @"nTypes": u8,
    @"firstKeySym": xcb.KEYCODE,
    @"nKeySyms": u8,
    @"firstKeyAct": xcb.KEYCODE,
    @"nKeyActs": u8,
    @"firstKeyBehavior": xcb.KEYCODE,
    @"nKeyBehavior": u8,
    @"firstKeyExplicit": xcb.KEYCODE,
    @"nKeyExplicit": u8,
    @"firstModMapKey": xcb.KEYCODE,
    @"nModMapKeys": u8,
    @"firstVModMapKey": xcb.KEYCODE,
    @"nVModMapKeys": u8,
    @"virtualMods": u16,
    @"pad0": [2]u8,
};

/// Opcode for StateNotify.
pub const StateNotifyOpcode = 2;

/// @brief StateNotifyEvent
pub const StateNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"mods": u8,
    @"baseMods": u8,
    @"latchedMods": u8,
    @"lockedMods": u8,
    @"group": u8,
    @"baseGroup": i16,
    @"latchedGroup": i16,
    @"lockedGroup": u8,
    @"compatState": u8,
    @"grabMods": u8,
    @"compatGrabMods": u8,
    @"lookupMods": u8,
    @"compatLoockupMods": u8,
    @"ptrBtnState": u16,
    @"changed": u16,
    @"keycode": xcb.KEYCODE,
    @"eventType": u8,
    @"requestMajor": u8,
    @"requestMinor": u8,
};

/// Opcode for ControlsNotify.
pub const ControlsNotifyOpcode = 3;

/// @brief ControlsNotifyEvent
pub const ControlsNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"numGroups": u8,
    @"pad0": [2]u8,
    @"changedControls": u32,
    @"enabledControls": u32,
    @"enabledControlChanges": u32,
    @"keycode": xcb.KEYCODE,
    @"eventType": u8,
    @"requestMajor": u8,
    @"requestMinor": u8,
    @"pad1": [4]u8,
};

/// Opcode for IndicatorStateNotify.
pub const IndicatorStateNotifyOpcode = 4;

/// @brief IndicatorStateNotifyEvent
pub const IndicatorStateNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"pad0": [3]u8,
    @"state": u32,
    @"stateChanged": u32,
    @"pad1": [12]u8,
};

/// Opcode for IndicatorMapNotify.
pub const IndicatorMapNotifyOpcode = 5;

/// @brief IndicatorMapNotifyEvent
pub const IndicatorMapNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"pad0": [3]u8,
    @"state": u32,
    @"mapChanged": u32,
    @"pad1": [12]u8,
};

/// Opcode for NamesNotify.
pub const NamesNotifyOpcode = 6;

/// @brief NamesNotifyEvent
pub const NamesNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"pad0": u8,
    @"changed": u16,
    @"firstType": u8,
    @"nTypes": u8,
    @"firstLevelName": u8,
    @"nLevelNames": u8,
    @"pad1": u8,
    @"nRadioGroups": u8,
    @"nKeyAliases": u8,
    @"changedGroupNames": u8,
    @"changedVirtualMods": u16,
    @"firstKey": xcb.KEYCODE,
    @"nKeys": u8,
    @"changedIndicators": u32,
    @"pad2": [4]u8,
};

/// Opcode for CompatMapNotify.
pub const CompatMapNotifyOpcode = 7;

/// @brief CompatMapNotifyEvent
pub const CompatMapNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"changedGroups": u8,
    @"firstSI": u16,
    @"nSI": u16,
    @"nTotalSI": u16,
    @"pad0": [16]u8,
};

/// Opcode for BellNotify.
pub const BellNotifyOpcode = 8;

/// @brief BellNotifyEvent
pub const BellNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"bellClass": u8,
    @"bellID": u8,
    @"percent": u8,
    @"pitch": u16,
    @"duration": u16,
    @"name": xcb.ATOM,
    @"window": xcb.WINDOW,
    @"eventOnly": u8,
    @"pad0": [7]u8,
};

/// Opcode for ActionMessage.
pub const ActionMessageOpcode = 9;

/// @brief ActionMessageEvent
pub const ActionMessageEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"keycode": xcb.KEYCODE,
    @"press": u8,
    @"keyEventFollows": u8,
    @"mods": u8,
    @"group": u8,
    @"message": [8]xcb.xkb.STRING8,
    @"pad0": [10]u8,
};

/// Opcode for AccessXNotify.
pub const AccessXNotifyOpcode = 10;

/// @brief AccessXNotifyEvent
pub const AccessXNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"keycode": xcb.KEYCODE,
    @"detailt": u16,
    @"slowKeysDelay": u16,
    @"debounceDelay": u16,
    @"pad0": [16]u8,
};

/// Opcode for ExtensionDeviceNotify.
pub const ExtensionDeviceNotifyOpcode = 11;

/// @brief ExtensionDeviceNotifyEvent
pub const ExtensionDeviceNotifyEvent = struct {
    @"response_type": u8,
    @"xkbType": u8,
    @"sequence": u16,
    @"time": xcb.TIMESTAMP,
    @"deviceID": u8,
    @"pad0": u8,
    @"reason": u16,
    @"ledClass": u16,
    @"ledID": u16,
    @"ledsDefined": u32,
    @"ledState": u32,
    @"firstButton": u8,
    @"nButtons": u8,
    @"supported": u16,
    @"unsupported": u16,
    @"pad1": [2]u8,
};

test "" {
    @import("std").testing.refAllDecls(@This());
}
