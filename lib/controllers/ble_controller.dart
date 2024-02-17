import 'dart:async';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:get/get.dart';

import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';

enum BleStatus {
  scannig,
  connecting,
  disconnected,
  connected,
}

class BleController extends GetxController {
  final BleService _bleService = Get.find();

  final Rx<BleStatus> bleStatus = BleStatus.disconnected.obs;

  StreamSubscription? listenSearch;

  final RxList scanResults = [].obs;

  stopSearch() {
    _bleService.stopScanBle();
    bleStatus.value = BleStatus.disconnected;
  }

  startSearch() {
    scanResults.value = [];
    bleStatus.value = BleStatus.scannig;
    listenSearch = _bleService.startSearch().listen((event) {
      if (!scanResults.any((element) =>
          element.peripheral.identifier == event.peripheral.identifier)) {
            if(event.peripheral.name != null){
              scanResults.add(event);
            }
      }
    });
  }

  connect(ScanResult device) {
    _bleService.startProvisioning(device);
  }
}
