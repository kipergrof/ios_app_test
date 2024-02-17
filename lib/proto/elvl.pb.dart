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

import 'elvl.pbenum.dart';

export 'elvl.pbenum.dart';

class SetCtrlCmdReq extends $pb.GeneratedMessage {
  factory SetCtrlCmdReq({
    CrtlCmdId? cmdId,
  }) {
    final $result = create();
    if (cmdId != null) {
      $result.cmdId = cmdId;
    }
    return $result;
  }
  SetCtrlCmdReq._() : super();
  factory SetCtrlCmdReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCtrlCmdReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCtrlCmdReq', createEmptyInstance: create)
    ..e<CrtlCmdId>(1, _omitFieldNames ? '' : 'cmdId', $pb.PbFieldType.OE, defaultOrMaker: CrtlCmdId.NO_KEY_PRESS, valueOf: CrtlCmdId.valueOf, enumValues: CrtlCmdId.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCtrlCmdReq clone() => SetCtrlCmdReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCtrlCmdReq copyWith(void Function(SetCtrlCmdReq) updates) => super.copyWith((message) => updates(message as SetCtrlCmdReq)) as SetCtrlCmdReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCtrlCmdReq create() => SetCtrlCmdReq._();
  SetCtrlCmdReq createEmptyInstance() => create();
  static $pb.PbList<SetCtrlCmdReq> createRepeated() => $pb.PbList<SetCtrlCmdReq>();
  @$core.pragma('dart2js:noInline')
  static SetCtrlCmdReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCtrlCmdReq>(create);
  static SetCtrlCmdReq? _defaultInstance;

  @$pb.TagNumber(1)
  CrtlCmdId get cmdId => $_getN(0);
  @$pb.TagNumber(1)
  set cmdId(CrtlCmdId v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCmdId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmdId() => clearField(1);
}

class SetCtrlCmdResp extends $pb.GeneratedMessage {
  factory SetCtrlCmdResp({
    $core.int? nop,
  }) {
    final $result = create();
    if (nop != null) {
      $result.nop = nop;
    }
    return $result;
  }
  SetCtrlCmdResp._() : super();
  factory SetCtrlCmdResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCtrlCmdResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCtrlCmdResp', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nop', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCtrlCmdResp clone() => SetCtrlCmdResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCtrlCmdResp copyWith(void Function(SetCtrlCmdResp) updates) => super.copyWith((message) => updates(message as SetCtrlCmdResp)) as SetCtrlCmdResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCtrlCmdResp create() => SetCtrlCmdResp._();
  SetCtrlCmdResp createEmptyInstance() => create();
  static $pb.PbList<SetCtrlCmdResp> createRepeated() => $pb.PbList<SetCtrlCmdResp>();
  @$core.pragma('dart2js:noInline')
  static SetCtrlCmdResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCtrlCmdResp>(create);
  static SetCtrlCmdResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nop => $_getIZ(0);
  @$pb.TagNumber(1)
  set nop($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNop() => $_has(0);
  @$pb.TagNumber(1)
  void clearNop() => clearField(1);
}

class EcuSettings extends $pb.GeneratedMessage {
  factory EcuSettings({
    EcuSettingsRMA? rma,
    EcuSettingsTPM? tpm,
    EcuSettingsRHOS? rhos,
    EcuSettingsTM? tm,
    EcuSettingsRMM? rmm,
  }) {
    final $result = create();
    if (rma != null) {
      $result.rma = rma;
    }
    if (tpm != null) {
      $result.tpm = tpm;
    }
    if (rhos != null) {
      $result.rhos = rhos;
    }
    if (tm != null) {
      $result.tm = tm;
    }
    if (rmm != null) {
      $result.rmm = rmm;
    }
    return $result;
  }
  EcuSettings._() : super();
  factory EcuSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EcuSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EcuSettings', createEmptyInstance: create)
    ..e<EcuSettingsRMA>(1, _omitFieldNames ? '' : 'rma', $pb.PbFieldType.OE, defaultOrMaker: EcuSettingsRMA.RMA_N_A, valueOf: EcuSettingsRMA.valueOf, enumValues: EcuSettingsRMA.values)
    ..e<EcuSettingsTPM>(2, _omitFieldNames ? '' : 'tpm', $pb.PbFieldType.OE, defaultOrMaker: EcuSettingsTPM.TPM_N_A, valueOf: EcuSettingsTPM.valueOf, enumValues: EcuSettingsTPM.values)
    ..e<EcuSettingsRHOS>(3, _omitFieldNames ? '' : 'rhos', $pb.PbFieldType.OE, defaultOrMaker: EcuSettingsRHOS.RHOS_N_A, valueOf: EcuSettingsRHOS.valueOf, enumValues: EcuSettingsRHOS.values)
    ..e<EcuSettingsTM>(4, _omitFieldNames ? '' : 'tm', $pb.PbFieldType.OE, defaultOrMaker: EcuSettingsTM.TM_N_A, valueOf: EcuSettingsTM.valueOf, enumValues: EcuSettingsTM.values)
    ..e<EcuSettingsRMM>(5, _omitFieldNames ? '' : 'rmm', $pb.PbFieldType.OE, defaultOrMaker: EcuSettingsRMM.RMM_N_A, valueOf: EcuSettingsRMM.valueOf, enumValues: EcuSettingsRMM.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EcuSettings clone() => EcuSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EcuSettings copyWith(void Function(EcuSettings) updates) => super.copyWith((message) => updates(message as EcuSettings)) as EcuSettings;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EcuSettings create() => EcuSettings._();
  EcuSettings createEmptyInstance() => create();
  static $pb.PbList<EcuSettings> createRepeated() => $pb.PbList<EcuSettings>();
  @$core.pragma('dart2js:noInline')
  static EcuSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EcuSettings>(create);
  static EcuSettings? _defaultInstance;

  @$pb.TagNumber(1)
  EcuSettingsRMA get rma => $_getN(0);
  @$pb.TagNumber(1)
  set rma(EcuSettingsRMA v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRma() => $_has(0);
  @$pb.TagNumber(1)
  void clearRma() => clearField(1);

  @$pb.TagNumber(2)
  EcuSettingsTPM get tpm => $_getN(1);
  @$pb.TagNumber(2)
  set tpm(EcuSettingsTPM v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTpm() => $_has(1);
  @$pb.TagNumber(2)
  void clearTpm() => clearField(2);

  @$pb.TagNumber(3)
  EcuSettingsRHOS get rhos => $_getN(2);
  @$pb.TagNumber(3)
  set rhos(EcuSettingsRHOS v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRhos() => $_has(2);
  @$pb.TagNumber(3)
  void clearRhos() => clearField(3);

  @$pb.TagNumber(4)
  EcuSettingsTM get tm => $_getN(3);
  @$pb.TagNumber(4)
  set tm(EcuSettingsTM v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTm() => $_has(3);
  @$pb.TagNumber(4)
  void clearTm() => clearField(4);

  @$pb.TagNumber(5)
  EcuSettingsRMM get rmm => $_getN(4);
  @$pb.TagNumber(5)
  set rmm(EcuSettingsRMM v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRmm() => $_has(4);
  @$pb.TagNumber(5)
  void clearRmm() => clearField(5);
}

class GetEcuSettingReq extends $pb.GeneratedMessage {
  factory GetEcuSettingReq({
    $core.int? nop,
  }) {
    final $result = create();
    if (nop != null) {
      $result.nop = nop;
    }
    return $result;
  }
  GetEcuSettingReq._() : super();
  factory GetEcuSettingReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEcuSettingReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEcuSettingReq', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nop', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEcuSettingReq clone() => GetEcuSettingReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEcuSettingReq copyWith(void Function(GetEcuSettingReq) updates) => super.copyWith((message) => updates(message as GetEcuSettingReq)) as GetEcuSettingReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEcuSettingReq create() => GetEcuSettingReq._();
  GetEcuSettingReq createEmptyInstance() => create();
  static $pb.PbList<GetEcuSettingReq> createRepeated() => $pb.PbList<GetEcuSettingReq>();
  @$core.pragma('dart2js:noInline')
  static GetEcuSettingReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEcuSettingReq>(create);
  static GetEcuSettingReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nop => $_getIZ(0);
  @$pb.TagNumber(1)
  set nop($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNop() => $_has(0);
  @$pb.TagNumber(1)
  void clearNop() => clearField(1);
}

class GetEcuSettingResp extends $pb.GeneratedMessage {
  factory GetEcuSettingResp({
    EcuSettings? settings,
    $core.int? errorCode,
    $core.int? brightness,
  }) {
    final $result = create();
    if (settings != null) {
      $result.settings = settings;
    }
    if (errorCode != null) {
      $result.errorCode = errorCode;
    }
    if (brightness != null) {
      $result.brightness = brightness;
    }
    return $result;
  }
  GetEcuSettingResp._() : super();
  factory GetEcuSettingResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetEcuSettingResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetEcuSettingResp', createEmptyInstance: create)
    ..aOM<EcuSettings>(1, _omitFieldNames ? '' : 'settings', subBuilder: EcuSettings.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'brightness', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetEcuSettingResp clone() => GetEcuSettingResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetEcuSettingResp copyWith(void Function(GetEcuSettingResp) updates) => super.copyWith((message) => updates(message as GetEcuSettingResp)) as GetEcuSettingResp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetEcuSettingResp create() => GetEcuSettingResp._();
  GetEcuSettingResp createEmptyInstance() => create();
  static $pb.PbList<GetEcuSettingResp> createRepeated() => $pb.PbList<GetEcuSettingResp>();
  @$core.pragma('dart2js:noInline')
  static GetEcuSettingResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetEcuSettingResp>(create);
  static GetEcuSettingResp? _defaultInstance;

  @$pb.TagNumber(1)
  EcuSettings get settings => $_getN(0);
  @$pb.TagNumber(1)
  set settings(EcuSettings v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSettings() => $_has(0);
  @$pb.TagNumber(1)
  void clearSettings() => clearField(1);
  @$pb.TagNumber(1)
  EcuSettings ensureSettings() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get errorCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set errorCode($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get brightness => $_getIZ(2);
  @$pb.TagNumber(3)
  set brightness($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBrightness() => $_has(2);
  @$pb.TagNumber(3)
  void clearBrightness() => clearField(3);
}

enum elvlPayload_Payload {
  setCtrlCmdReq, 
  setCtrlCmdResp, 
  getEcuSettingsReq, 
  getEcuSettingsResp, 
  notSet
}

class elvlPayload extends $pb.GeneratedMessage {
  factory elvlPayload({
    SetCtrlCmdReq? setCtrlCmdReq,
    SetCtrlCmdResp? setCtrlCmdResp,
    GetEcuSettingReq? getEcuSettingsReq,
    GetEcuSettingResp? getEcuSettingsResp,
  }) {
    final $result = create();
    if (setCtrlCmdReq != null) {
      $result.setCtrlCmdReq = setCtrlCmdReq;
    }
    if (setCtrlCmdResp != null) {
      $result.setCtrlCmdResp = setCtrlCmdResp;
    }
    if (getEcuSettingsReq != null) {
      $result.getEcuSettingsReq = getEcuSettingsReq;
    }
    if (getEcuSettingsResp != null) {
      $result.getEcuSettingsResp = getEcuSettingsResp;
    }
    return $result;
  }
  elvlPayload._() : super();
  factory elvlPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory elvlPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, elvlPayload_Payload> _elvlPayload_PayloadByTag = {
    1 : elvlPayload_Payload.setCtrlCmdReq,
    2 : elvlPayload_Payload.setCtrlCmdResp,
    3 : elvlPayload_Payload.getEcuSettingsReq,
    4 : elvlPayload_Payload.getEcuSettingsResp,
    0 : elvlPayload_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'elvlPayload', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<SetCtrlCmdReq>(1, _omitFieldNames ? '' : 'setCtrlCmdReq', subBuilder: SetCtrlCmdReq.create)
    ..aOM<SetCtrlCmdResp>(2, _omitFieldNames ? '' : 'setCtrlCmdResp', subBuilder: SetCtrlCmdResp.create)
    ..aOM<GetEcuSettingReq>(3, _omitFieldNames ? '' : 'getEcuSettingsReq', subBuilder: GetEcuSettingReq.create)
    ..aOM<GetEcuSettingResp>(4, _omitFieldNames ? '' : 'getEcuSettingsResp', subBuilder: GetEcuSettingResp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  elvlPayload clone() => elvlPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  elvlPayload copyWith(void Function(elvlPayload) updates) => super.copyWith((message) => updates(message as elvlPayload)) as elvlPayload;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static elvlPayload create() => elvlPayload._();
  elvlPayload createEmptyInstance() => create();
  static $pb.PbList<elvlPayload> createRepeated() => $pb.PbList<elvlPayload>();
  @$core.pragma('dart2js:noInline')
  static elvlPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<elvlPayload>(create);
  static elvlPayload? _defaultInstance;

  elvlPayload_Payload whichPayload() => _elvlPayload_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetCtrlCmdReq get setCtrlCmdReq => $_getN(0);
  @$pb.TagNumber(1)
  set setCtrlCmdReq(SetCtrlCmdReq v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetCtrlCmdReq() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetCtrlCmdReq() => clearField(1);
  @$pb.TagNumber(1)
  SetCtrlCmdReq ensureSetCtrlCmdReq() => $_ensure(0);

  @$pb.TagNumber(2)
  SetCtrlCmdResp get setCtrlCmdResp => $_getN(1);
  @$pb.TagNumber(2)
  set setCtrlCmdResp(SetCtrlCmdResp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetCtrlCmdResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetCtrlCmdResp() => clearField(2);
  @$pb.TagNumber(2)
  SetCtrlCmdResp ensureSetCtrlCmdResp() => $_ensure(1);

  @$pb.TagNumber(3)
  GetEcuSettingReq get getEcuSettingsReq => $_getN(2);
  @$pb.TagNumber(3)
  set getEcuSettingsReq(GetEcuSettingReq v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGetEcuSettingsReq() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetEcuSettingsReq() => clearField(3);
  @$pb.TagNumber(3)
  GetEcuSettingReq ensureGetEcuSettingsReq() => $_ensure(2);

  @$pb.TagNumber(4)
  GetEcuSettingResp get getEcuSettingsResp => $_getN(3);
  @$pb.TagNumber(4)
  set getEcuSettingsResp(GetEcuSettingResp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetEcuSettingsResp() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetEcuSettingsResp() => clearField(4);
  @$pb.TagNumber(4)
  GetEcuSettingResp ensureGetEcuSettingsResp() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
