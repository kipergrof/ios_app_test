import 'dart:async';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:get/get.dart';

import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';


class AirRideControlController extends GetxController {
    final BleService _bleService = Get.find();
    sendCmd(CrtlCmdId cmdId)
  {
    _bleService.sendElvlCtrlCmd(cmdId);
  }
}