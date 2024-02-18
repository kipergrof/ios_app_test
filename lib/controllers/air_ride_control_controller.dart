import 'dart:async';

import 'package:get/get.dart';

import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';


class AirRideControlController extends GetxController {
    final BleService _bleService = Get.find();
    sendCmd(CrtlCmdId cmdId)
  {
   // _bleService.sendElvlCtrlCmd(cmdId);
  }
}