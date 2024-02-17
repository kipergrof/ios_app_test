//
//  Generated code. Do not modify.
//  source: elvl.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CrtlCmdId extends $pb.ProtobufEnum {
  static const CrtlCmdId NO_KEY_PRESS = CrtlCmdId._(0, _omitEnumNames ? '' : 'NO_KEY_PRESS');
  static const CrtlCmdId ALL_DOWN = CrtlCmdId._(1, _omitEnumNames ? '' : 'ALL_DOWN');
  static const CrtlCmdId DOT = CrtlCmdId._(2, _omitEnumNames ? '' : 'DOT');
  static const CrtlCmdId THREE = CrtlCmdId._(3, _omitEnumNames ? '' : 'THREE');
  static const CrtlCmdId TWO = CrtlCmdId._(4, _omitEnumNames ? '' : 'TWO');
  static const CrtlCmdId ONE = CrtlCmdId._(5, _omitEnumNames ? '' : 'ONE');
  static const CrtlCmdId FRONT_AXLE_UP = CrtlCmdId._(6, _omitEnumNames ? '' : 'FRONT_AXLE_UP');
  static const CrtlCmdId FRONT_AXLE_DOWN = CrtlCmdId._(7, _omitEnumNames ? '' : 'FRONT_AXLE_DOWN');
  static const CrtlCmdId FRONT_LEFT_UP = CrtlCmdId._(8, _omitEnumNames ? '' : 'FRONT_LEFT_UP');
  static const CrtlCmdId FRONT_LEFT_DOWN = CrtlCmdId._(9, _omitEnumNames ? '' : 'FRONT_LEFT_DOWN');
  static const CrtlCmdId FRONT_RIGHT_UP = CrtlCmdId._(10, _omitEnumNames ? '' : 'FRONT_RIGHT_UP');
  static const CrtlCmdId FRONT_RIGHT_DOWN = CrtlCmdId._(11, _omitEnumNames ? '' : 'FRONT_RIGHT_DOWN');
  static const CrtlCmdId REAR_AXLE_UP = CrtlCmdId._(12, _omitEnumNames ? '' : 'REAR_AXLE_UP');
  static const CrtlCmdId REAR_AXLE_DOWN = CrtlCmdId._(13, _omitEnumNames ? '' : 'REAR_AXLE_DOWN');
  static const CrtlCmdId REAR_LEFT_UP = CrtlCmdId._(14, _omitEnumNames ? '' : 'REAR_LEFT_UP');
  static const CrtlCmdId REAR_LEFT_DOWN = CrtlCmdId._(15, _omitEnumNames ? '' : 'REAR_LEFT_DOWN');
  static const CrtlCmdId REAR_RIGHT_UP = CrtlCmdId._(16, _omitEnumNames ? '' : 'REAR_RIGHT_UP');
  static const CrtlCmdId REAR_RIGHT_DOWN = CrtlCmdId._(17, _omitEnumNames ? '' : 'REAR_RIGHT_DOWN');

  static const $core.List<CrtlCmdId> values = <CrtlCmdId> [
    NO_KEY_PRESS,
    ALL_DOWN,
    DOT,
    THREE,
    TWO,
    ONE,
    FRONT_AXLE_UP,
    FRONT_AXLE_DOWN,
    FRONT_LEFT_UP,
    FRONT_LEFT_DOWN,
    FRONT_RIGHT_UP,
    FRONT_RIGHT_DOWN,
    REAR_AXLE_UP,
    REAR_AXLE_DOWN,
    REAR_LEFT_UP,
    REAR_LEFT_DOWN,
    REAR_RIGHT_UP,
    REAR_RIGHT_DOWN,
  ];

  static final $core.Map<$core.int, CrtlCmdId> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CrtlCmdId? valueOf($core.int value) => _byValue[value];

  const CrtlCmdId._($core.int v, $core.String n) : super(v, n);
}

class EcuSettingsRMA extends $pb.ProtobufEnum {
  static const EcuSettingsRMA RMA_N_A = EcuSettingsRMA._(0, _omitEnumNames ? '' : 'RMA_N_A');
  static const EcuSettingsRMA RMA_LOWER_15 = EcuSettingsRMA._(1, _omitEnumNames ? '' : 'RMA_LOWER_15');
  static const EcuSettingsRMA RMA_FACTORY = EcuSettingsRMA._(2, _omitEnumNames ? '' : 'RMA_FACTORY');
  static const EcuSettingsRMA RMA_HIGHER_8 = EcuSettingsRMA._(3, _omitEnumNames ? '' : 'RMA_HIGHER_8');

  static const $core.List<EcuSettingsRMA> values = <EcuSettingsRMA> [
    RMA_N_A,
    RMA_LOWER_15,
    RMA_FACTORY,
    RMA_HIGHER_8,
  ];

  static final $core.Map<$core.int, EcuSettingsRMA> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EcuSettingsRMA? valueOf($core.int value) => _byValue[value];

  const EcuSettingsRMA._($core.int v, $core.String n) : super(v, n);
}

class EcuSettingsTPM extends $pb.ProtobufEnum {
  static const EcuSettingsTPM TPM_N_A = EcuSettingsTPM._(0, _omitEnumNames ? '' : 'TPM_N_A');
  static const EcuSettingsTPM TPM_PSI_150 = EcuSettingsTPM._(1, _omitEnumNames ? '' : 'TPM_PSI_150');
  static const EcuSettingsTPM TPM_PSI_175 = EcuSettingsTPM._(2, _omitEnumNames ? '' : 'TPM_PSI_175');
  static const EcuSettingsTPM TPM_PSI_200 = EcuSettingsTPM._(3, _omitEnumNames ? '' : 'TPM_PSI_200');

  static const $core.List<EcuSettingsTPM> values = <EcuSettingsTPM> [
    TPM_N_A,
    TPM_PSI_150,
    TPM_PSI_175,
    TPM_PSI_200,
  ];

  static final $core.Map<$core.int, EcuSettingsTPM> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EcuSettingsTPM? valueOf($core.int value) => _byValue[value];

  const EcuSettingsTPM._($core.int v, $core.String n) : super(v, n);
}

class EcuSettingsRHOS extends $pb.ProtobufEnum {
  static const EcuSettingsRHOS RHOS_N_A = EcuSettingsRHOS._(0, _omitEnumNames ? '' : 'RHOS_N_A');
  static const EcuSettingsRHOS RHOS_OFF = EcuSettingsRHOS._(1, _omitEnumNames ? '' : 'RHOS_OFF');
  static const EcuSettingsRHOS RHOS_ON = EcuSettingsRHOS._(2, _omitEnumNames ? '' : 'RHOS_ON');

  static const $core.List<EcuSettingsRHOS> values = <EcuSettingsRHOS> [
    RHOS_N_A,
    RHOS_OFF,
    RHOS_ON,
  ];

  static final $core.Map<$core.int, EcuSettingsRHOS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EcuSettingsRHOS? valueOf($core.int value) => _byValue[value];

  const EcuSettingsRHOS._($core.int v, $core.String n) : super(v, n);
}

class EcuSettingsTM extends $pb.ProtobufEnum {
  static const EcuSettingsTM TM_N_A = EcuSettingsTM._(0, _omitEnumNames ? '' : 'TM_N_A');
  static const EcuSettingsTM TM_ON = EcuSettingsTM._(1, _omitEnumNames ? '' : 'TM_ON');
  static const EcuSettingsTM TM_OFF = EcuSettingsTM._(2, _omitEnumNames ? '' : 'TM_OFF');

  static const $core.List<EcuSettingsTM> values = <EcuSettingsTM> [
    TM_N_A,
    TM_ON,
    TM_OFF,
  ];

  static final $core.Map<$core.int, EcuSettingsTM> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EcuSettingsTM? valueOf($core.int value) => _byValue[value];

  const EcuSettingsTM._($core.int v, $core.String n) : super(v, n);
}

class EcuSettingsRMM extends $pb.ProtobufEnum {
  static const EcuSettingsRMM RMM_N_A = EcuSettingsRMM._(0, _omitEnumNames ? '' : 'RMM_N_A');
  static const EcuSettingsRMM RMM_ON = EcuSettingsRMM._(1, _omitEnumNames ? '' : 'RMM_ON');
  static const EcuSettingsRMM RMM_OFF = EcuSettingsRMM._(2, _omitEnumNames ? '' : 'RMM_OFF');

  static const $core.List<EcuSettingsRMM> values = <EcuSettingsRMM> [
    RMM_N_A,
    RMM_ON,
    RMM_OFF,
  ];

  static final $core.Map<$core.int, EcuSettingsRMM> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EcuSettingsRMM? valueOf($core.int value) => _byValue[value];

  const EcuSettingsRMM._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
