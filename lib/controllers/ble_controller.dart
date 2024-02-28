import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test1/controllers/settings_controller.dart';
import 'package:get/get.dart';

import '../proto/elvl.pbenum.dart';
import '../services/ble_service.dart';
import 'global_controller.dart';

enum BleStatus {
  scannig,
  idle,
}


class BleController extends GetxController {
  final BleService bleService = Get.find();

  final GlobalController _globalController = Get.find<GlobalController>();

  Timer? _searchTimer;

   final Rx<BleStatus> bleStatus = BleStatus.idle.obs;

  // final Rx<BleDevStatus> bleDevStatus = BleDevStatus.disconnected.obs;

  StreamSubscription? listenSearch;

/*   stopSearch() async {
    listenSearch!.cancel();
     await _bleService.stopScanBle();
    //bleStatus.value = BleStatus.disconnected;
  } */
  Rx<BleDevStatus> getBleDevStatus()
  {
    return _globalController.getBleDevStatus();
  }

  startSearch({bool clearResult = false}) async {
//
    bleStatus.value = BleStatus.scannig;
    await bleService.startScan(clearResult: clearResult);
    bleStatus.value = BleStatus.idle;
  }

  connect(ScanResult result) async {
    _globalController.setBleDevStatus(BleDevStatus.connecting);
    await bleService.startProvisioning(result.device);

    if (bleService.isConnected(result.device)) {
      _globalController.setBleDevStatus(BleDevStatus.connected);
    } else {
      _globalController.setBleDevStatus(BleDevStatus.disconnected);
    }
  }

  disconnect() async{
    BluetoothDevice ?connected = bleService.connectedDevice;
    await bleService.stopProvisioning();
    
    if (bleService.isConnected(connected!)) {
      _globalController.setBleDevStatus(BleDevStatus.connected);
    } else {
      _globalController.setBleDevStatus(BleDevStatus.disconnected);
    }
  }

  void setTimer() {
    _searchTimer = Timer.periodic(const Duration(seconds: 13), (timer) async {
      print(DateTime.now());
      await startSearch();
    });
  }

  @override
  void onClose() {
    _searchTimer!.cancel();
  }
}

class ListItemController extends GetxController {
  final connecting = false.obs;
  final BleController _bleController = Get.find<BleController>();
  Future<void> connect(ScanResult result) async {
    connecting.value = true;
    await _bleController.connect(result);
    connecting.value = false;
  }
}
