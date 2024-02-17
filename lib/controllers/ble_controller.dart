import 'dart:async';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:get/get.dart';

import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';

class BleController extends GetxController {
  
  final BleService _bleService = Get.find();

  StreamSubscription? listenSearch;

  final RxList scanResults = [].obs;

  startSearch() {
    listenSearch = _bleService.startSearch().listen((event) {
      if (!scanResults.any((element) =>
          element.peripheral.identifier == event.peripheral.identifier)) {
        scanResults.add(event);
      }
    });
  }

  connect(ScanResult device)
  {
    _bleService.startProvisioning(device);
  }

  sendCmd(CrtlCmdId cmdId)
  {
    _bleService.sendElvlCtrlCmd(cmdId);
  }
}
