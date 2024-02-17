//
//  Generated code. Do not modify.
//  source: elvl.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use crtlCmdIdDescriptor instead')
const CrtlCmdId$json = {
  '1': 'CrtlCmdId',
  '2': [
    {'1': 'NO_KEY_PRESS', '2': 0},
    {'1': 'ALL_DOWN', '2': 1},
    {'1': 'DOT', '2': 2},
    {'1': 'THREE', '2': 3},
    {'1': 'TWO', '2': 4},
    {'1': 'ONE', '2': 5},
    {'1': 'FRONT_AXLE_UP', '2': 6},
    {'1': 'FRONT_AXLE_DOWN', '2': 7},
    {'1': 'FRONT_LEFT_UP', '2': 8},
    {'1': 'FRONT_LEFT_DOWN', '2': 9},
    {'1': 'FRONT_RIGHT_UP', '2': 10},
    {'1': 'FRONT_RIGHT_DOWN', '2': 11},
    {'1': 'REAR_AXLE_UP', '2': 12},
    {'1': 'REAR_AXLE_DOWN', '2': 13},
    {'1': 'REAR_LEFT_UP', '2': 14},
    {'1': 'REAR_LEFT_DOWN', '2': 15},
    {'1': 'REAR_RIGHT_UP', '2': 16},
    {'1': 'REAR_RIGHT_DOWN', '2': 17},
  ],
};

/// Descriptor for `CrtlCmdId`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List crtlCmdIdDescriptor = $convert.base64Decode(
    'CglDcnRsQ21kSWQSEAoMTk9fS0VZX1BSRVNTEAASDAoIQUxMX0RPV04QARIHCgNET1QQAhIJCg'
    'VUSFJFRRADEgcKA1RXTxAEEgcKA09ORRAFEhEKDUZST05UX0FYTEVfVVAQBhITCg9GUk9OVF9B'
    'WExFX0RPV04QBxIRCg1GUk9OVF9MRUZUX1VQEAgSEwoPRlJPTlRfTEVGVF9ET1dOEAkSEgoORl'
    'JPTlRfUklHSFRfVVAQChIUChBGUk9OVF9SSUdIVF9ET1dOEAsSEAoMUkVBUl9BWExFX1VQEAwS'
    'EgoOUkVBUl9BWExFX0RPV04QDRIQCgxSRUFSX0xFRlRfVVAQDhISCg5SRUFSX0xFRlRfRE9XTh'
    'APEhEKDVJFQVJfUklHSFRfVVAQEBITCg9SRUFSX1JJR0hUX0RPV04QEQ==');

@$core.Deprecated('Use ecuSettingsRMADescriptor instead')
const EcuSettingsRMA$json = {
  '1': 'EcuSettingsRMA',
  '2': [
    {'1': 'RMA_N_A', '2': 0},
    {'1': 'RMA_LOWER_15', '2': 1},
    {'1': 'RMA_FACTORY', '2': 2},
    {'1': 'RMA_HIGHER_8', '2': 3},
  ],
};

/// Descriptor for `EcuSettingsRMA`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ecuSettingsRMADescriptor = $convert.base64Decode(
    'Cg5FY3VTZXR0aW5nc1JNQRILCgdSTUFfTl9BEAASEAoMUk1BX0xPV0VSXzE1EAESDwoLUk1BX0'
    'ZBQ1RPUlkQAhIQCgxSTUFfSElHSEVSXzgQAw==');

@$core.Deprecated('Use ecuSettingsTPMDescriptor instead')
const EcuSettingsTPM$json = {
  '1': 'EcuSettingsTPM',
  '2': [
    {'1': 'TPM_N_A', '2': 0},
    {'1': 'TPM_PSI_150', '2': 1},
    {'1': 'TPM_PSI_175', '2': 2},
    {'1': 'TPM_PSI_200', '2': 3},
  ],
};

/// Descriptor for `EcuSettingsTPM`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ecuSettingsTPMDescriptor = $convert.base64Decode(
    'Cg5FY3VTZXR0aW5nc1RQTRILCgdUUE1fTl9BEAASDwoLVFBNX1BTSV8xNTAQARIPCgtUUE1fUF'
    'NJXzE3NRACEg8KC1RQTV9QU0lfMjAwEAM=');

@$core.Deprecated('Use ecuSettingsRHOSDescriptor instead')
const EcuSettingsRHOS$json = {
  '1': 'EcuSettingsRHOS',
  '2': [
    {'1': 'RHOS_N_A', '2': 0},
    {'1': 'RHOS_OFF', '2': 1},
    {'1': 'RHOS_ON', '2': 2},
  ],
};

/// Descriptor for `EcuSettingsRHOS`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ecuSettingsRHOSDescriptor = $convert.base64Decode(
    'Cg9FY3VTZXR0aW5nc1JIT1MSDAoIUkhPU19OX0EQABIMCghSSE9TX09GRhABEgsKB1JIT1NfT0'
    '4QAg==');

@$core.Deprecated('Use ecuSettingsTMDescriptor instead')
const EcuSettingsTM$json = {
  '1': 'EcuSettingsTM',
  '2': [
    {'1': 'TM_N_A', '2': 0},
    {'1': 'TM_ON', '2': 1},
    {'1': 'TM_OFF', '2': 2},
  ],
};

/// Descriptor for `EcuSettingsTM`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ecuSettingsTMDescriptor = $convert.base64Decode(
    'Cg1FY3VTZXR0aW5nc1RNEgoKBlRNX05fQRAAEgkKBVRNX09OEAESCgoGVE1fT0ZGEAI=');

@$core.Deprecated('Use ecuSettingsRMMDescriptor instead')
const EcuSettingsRMM$json = {
  '1': 'EcuSettingsRMM',
  '2': [
    {'1': 'RMM_N_A', '2': 0},
    {'1': 'RMM_ON', '2': 1},
    {'1': 'RMM_OFF', '2': 2},
  ],
};

/// Descriptor for `EcuSettingsRMM`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ecuSettingsRMMDescriptor = $convert.base64Decode(
    'Cg5FY3VTZXR0aW5nc1JNTRILCgdSTU1fTl9BEAASCgoGUk1NX09OEAESCwoHUk1NX09GRhAC');

@$core.Deprecated('Use setCtrlCmdReqDescriptor instead')
const SetCtrlCmdReq$json = {
  '1': 'SetCtrlCmdReq',
  '2': [
    {'1': 'cmd_id', '3': 1, '4': 1, '5': 14, '6': '.CrtlCmdId', '10': 'cmdId'},
  ],
};

/// Descriptor for `SetCtrlCmdReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCtrlCmdReqDescriptor = $convert.base64Decode(
    'Cg1TZXRDdHJsQ21kUmVxEiEKBmNtZF9pZBgBIAEoDjIKLkNydGxDbWRJZFIFY21kSWQ=');

@$core.Deprecated('Use setCtrlCmdRespDescriptor instead')
const SetCtrlCmdResp$json = {
  '1': 'SetCtrlCmdResp',
  '2': [
    {'1': 'nop', '3': 1, '4': 1, '5': 5, '10': 'nop'},
  ],
};

/// Descriptor for `SetCtrlCmdResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCtrlCmdRespDescriptor = $convert.base64Decode(
    'Cg5TZXRDdHJsQ21kUmVzcBIQCgNub3AYASABKAVSA25vcA==');

@$core.Deprecated('Use ecuSettingsDescriptor instead')
const EcuSettings$json = {
  '1': 'EcuSettings',
  '2': [
    {'1': 'rma', '3': 1, '4': 1, '5': 14, '6': '.EcuSettingsRMA', '10': 'rma'},
    {'1': 'tpm', '3': 2, '4': 1, '5': 14, '6': '.EcuSettingsTPM', '10': 'tpm'},
    {'1': 'rhos', '3': 3, '4': 1, '5': 14, '6': '.EcuSettingsRHOS', '10': 'rhos'},
    {'1': 'tm', '3': 4, '4': 1, '5': 14, '6': '.EcuSettingsTM', '10': 'tm'},
    {'1': 'rmm', '3': 5, '4': 1, '5': 14, '6': '.EcuSettingsRMM', '10': 'rmm'},
  ],
};

/// Descriptor for `EcuSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ecuSettingsDescriptor = $convert.base64Decode(
    'CgtFY3VTZXR0aW5ncxIhCgNybWEYASABKA4yDy5FY3VTZXR0aW5nc1JNQVIDcm1hEiEKA3RwbR'
    'gCIAEoDjIPLkVjdVNldHRpbmdzVFBNUgN0cG0SJAoEcmhvcxgDIAEoDjIQLkVjdVNldHRpbmdz'
    'UkhPU1IEcmhvcxIeCgJ0bRgEIAEoDjIOLkVjdVNldHRpbmdzVE1SAnRtEiEKA3JtbRgFIAEoDj'
    'IPLkVjdVNldHRpbmdzUk1NUgNybW0=');

@$core.Deprecated('Use getEcuSettingReqDescriptor instead')
const GetEcuSettingReq$json = {
  '1': 'GetEcuSettingReq',
  '2': [
    {'1': 'nop', '3': 1, '4': 1, '5': 5, '10': 'nop'},
  ],
};

/// Descriptor for `GetEcuSettingReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEcuSettingReqDescriptor = $convert.base64Decode(
    'ChBHZXRFY3VTZXR0aW5nUmVxEhAKA25vcBgBIAEoBVIDbm9w');

@$core.Deprecated('Use getEcuSettingRespDescriptor instead')
const GetEcuSettingResp$json = {
  '1': 'GetEcuSettingResp',
  '2': [
    {'1': 'settings', '3': 1, '4': 1, '5': 11, '6': '.EcuSettings', '10': 'settings'},
    {'1': 'error_code', '3': 2, '4': 1, '5': 13, '8': {}, '10': 'errorCode'},
    {'1': 'brightness', '3': 3, '4': 1, '5': 13, '8': {}, '10': 'brightness'},
  ],
};

/// Descriptor for `GetEcuSettingResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getEcuSettingRespDescriptor = $convert.base64Decode(
    'ChFHZXRFY3VTZXR0aW5nUmVzcBIoCghzZXR0aW5ncxgBIAEoCzIMLkVjdVNldHRpbmdzUghzZX'
    'R0aW5ncxIkCgplcnJvcl9jb2RlGAIgASgNQgWSPwI4CFIJZXJyb3JDb2RlEiUKCmJyaWdodG5l'
    'c3MYAyABKA1CBZI/AjgIUgpicmlnaHRuZXNz');

@$core.Deprecated('Use elvlPayloadDescriptor instead')
const elvlPayload$json = {
  '1': 'elvlPayload',
  '2': [
    {'1': 'set_ctrl_cmd_req', '3': 1, '4': 1, '5': 11, '6': '.SetCtrlCmdReq', '9': 0, '10': 'setCtrlCmdReq'},
    {'1': 'set_ctrl_cmd_resp', '3': 2, '4': 1, '5': 11, '6': '.SetCtrlCmdResp', '9': 0, '10': 'setCtrlCmdResp'},
    {'1': 'get_ecu_settings_req', '3': 3, '4': 1, '5': 11, '6': '.GetEcuSettingReq', '9': 0, '10': 'getEcuSettingsReq'},
    {'1': 'get_ecu_settings_resp', '3': 4, '4': 1, '5': 11, '6': '.GetEcuSettingResp', '9': 0, '10': 'getEcuSettingsResp'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `elvlPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List elvlPayloadDescriptor = $convert.base64Decode(
    'CgtlbHZsUGF5bG9hZBI5ChBzZXRfY3RybF9jbWRfcmVxGAEgASgLMg4uU2V0Q3RybENtZFJlcU'
    'gAUg1zZXRDdHJsQ21kUmVxEjwKEXNldF9jdHJsX2NtZF9yZXNwGAIgASgLMg8uU2V0Q3RybENt'
    'ZFJlc3BIAFIOc2V0Q3RybENtZFJlc3ASRAoUZ2V0X2VjdV9zZXR0aW5nc19yZXEYAyABKAsyES'
    '5HZXRFY3VTZXR0aW5nUmVxSABSEWdldEVjdVNldHRpbmdzUmVxEkcKFWdldF9lY3Vfc2V0dGlu'
    'Z3NfcmVzcBgEIAEoCzISLkdldEVjdVNldHRpbmdSZXNwSABSEmdldEVjdVNldHRpbmdzUmVzcE'
    'IJCgdwYXlsb2Fk');

