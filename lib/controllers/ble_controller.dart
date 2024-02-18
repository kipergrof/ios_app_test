import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';

enum BleStatus {
  scannig,
  idle,
  connecting,
  disconnected,
  connected,
}

class BleController extends GetxController {
  final BleService bleService = Get.find();

  Timer? _searchTimer;

  final Rx<BleStatus> bleStatus = BleStatus.disconnected.obs;

  final Rx<bool> connected = false.obs;

  StreamSubscription? listenSearch;

/*   stopSearch() async {
    listenSearch!.cancel();
     await _bleService.stopScanBle();
    //bleStatus.value = BleStatus.disconnected;
  } */

  startSearch({bool clearResult=false}) async {
//
    bleStatus.value = BleStatus.scannig;
    await bleService.startScan(clearResult:clearResult);
    bleStatus.value = BleStatus.idle;
  }

  connect(ScanResult result) async {
    bleStatus.value = BleStatus.connecting;

    await bleService.startProvisioning(result.device);

    if (bleService.isConnected(result.device)) {
      bleStatus.value = BleStatus.connected;
    } else {
      bleStatus.value = BleStatus.idle;
    }
  }

  void setTimer() {
   _searchTimer=Timer.periodic(Duration(seconds: 13), (timer) async {
  print(DateTime.now());
  await startSearch();
});

  }



  @override
  void onClose(){
    _searchTimer!.cancel();
  }


}


