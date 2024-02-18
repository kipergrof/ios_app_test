import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

import '../services/ble_service.dart';


enum BleDevStatus {
  disconnected,
  connecting,
  connected,
}

class SettingsController extends GetxController {
  final BleService bleService = Get.find();

  final Rx<BleDevStatus> bleDevStatus = BleDevStatus.disconnected.obs;

  StreamSubscription? listenSearch;

  Future<void> goToConnection() async {
    await Get.toNamed('/ble_connection');
  }

//   startSearch({bool clearResult = false}) async {
// //
//     bleStatus.value = BleStatus.scannig;
//     await bleService.startScan(clearResult: clearResult);
//     bleStatus.value = BleStatus.idle;
//   }

  // connect(ScanResult result) async {
  //   bleDevStatus.value = BleDevStatus.connecting;
  //   await bleService.startProvisioning(result.device);

  //   if (bleService.isConnected(result.device)) {
  //     bleDevStatus.value = BleDevStatus.connected;
  //   } else {
  //     bleDevStatus.value = BleDevStatus.disconnected;
  //   }
  // }
}
