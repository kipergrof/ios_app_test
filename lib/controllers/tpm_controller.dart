import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test1/controllers/settings_controller.dart';
import 'package:get/get.dart';

import '../proto/elvl.pb.dart';
import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';
import 'global_controller.dart';

enum BleStatus {
  scannig,
  idle,
}

class TpmController extends GetxController {
  final GlobalController _globalController = Get.find<GlobalController>();

  final BleService bleService = Get.find();

  Rx<GetEcuSettingResp> getEcuSettings() {
    return _globalController.getEcuSettings();
  }

  void setTpm150() {
    _globalController.resetTpmState(EcuSettingsTPM.TPM_SETTING_TO_PSI_150);
    bleService.setEcuReq(SetEcuSettingReq(tpm: EcuSettingsTPM.TPM_PSI_150));
  }

  void setTpm175() {
    _globalController.resetTpmState(EcuSettingsTPM.TPM_SETTING_TO_PSI_175);
    bleService.setEcuReq(SetEcuSettingReq(tpm: EcuSettingsTPM.TPM_PSI_175));
  }

  void setTpm200() {
    _globalController.resetTpmState(EcuSettingsTPM.TPM_SETTING_TO_PSI_200);
    bleService.setEcuReq(SetEcuSettingReq(tpm: EcuSettingsTPM.TPM_PSI_200));
  }
}
