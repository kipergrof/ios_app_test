import 'dart:async';

import 'package:get/get.dart';

import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';
import 'global_controller.dart';


class AirRideControlController extends GetxController {
    final BleService _bleService = Get.find();
    final GlobalController _globalController = Get.find<GlobalController>();
    sendCmd(CrtlCmdId cmdId)
  {
   // _bleService.sendElvlCtrlCmd(cmdId);
  }

  Rx<BleDevStatus> getBleDevStatus()
  {
    return _globalController.getBleDevStatus();
  }

  Future<void> goToConnection() async {
    await Get.toNamed('/settings');
  }
}