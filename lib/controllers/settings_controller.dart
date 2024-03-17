import 'dart:async';

import 'package:flutter_test1/proto/elvl.pb.dart';
import 'package:get/get.dart';

import '../services/ble_service.dart';
import 'global_controller.dart';

class SettingsController extends GetxController {
  final GlobalController _globalController = Get.find<GlobalController>();

  final BleService bleService = Get.find();

  //StreamSubscription? listenSearch;

  Future<void> goToConnection() async {
    await Get.toNamed('/ble_connection');
  }

    Future<void> goToTmpSettings() async {
    await Get.toNamed('/tpm');
  }

  Rx<BleDevStatus> getBleDevStatus() {
    return _globalController.getBleDevStatus();
  }

  Rx<GetEcuSettingResp> getEcuSettings() {
    return _globalController.getEcuSettings();
  }

  void setRhosOn() {
    _globalController.resetRhosState();
    bleService.setEcuReq(SetEcuSettingReq(rhos: EcuSettingsRHOS.RHOS_ON));
  }

  void setRhosOff() {
    _globalController.resetRhosState();
    bleService.setEcuReq(SetEcuSettingReq(rhos: EcuSettingsRHOS.RHOS_OFF));
  }

  void setRmmOn() {
    _globalController.resetRmmState();
    bleService.setEcuReq(SetEcuSettingReq(rmm: EcuSettingsRMM.RMM_ON));
  }

  void setRmmOff() {
    _globalController.resetRmmState();
    bleService.setEcuReq(SetEcuSettingReq(rmm: EcuSettingsRMM.RMM_OFF));
  }

  void setTmOn() {
    _globalController.resetTmState();
    bleService.setEcuReq(SetEcuSettingReq(tm: EcuSettingsTM.TM_ON));
  }

  void setTmOff() {
    _globalController.resetTmState();
    bleService.setEcuReq(SetEcuSettingReq(tm: EcuSettingsTM.TM_OFF));
  }

  // getEcuInfo() {
  //   if (BleDevStatus.connected == _globalController.getBleDevStatus().value) {
  //     bleService.getEcuReq();
  //   }
  // }

  @override
  void onClose() {
    print("close");
  }
}
