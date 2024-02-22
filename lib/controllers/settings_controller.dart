import 'dart:async';


import 'package:get/get.dart';

import '../services/ble_service.dart';
import 'global_controller.dart';




class SettingsController extends GetxController {  
  final GlobalController _globalController = Get.find<GlobalController>();

  final BleService bleService = Get.find();

  StreamSubscription? listenSearch;

  Future<void> goToConnection() async {
    await Get.toNamed('/ble_connection');
  }

  Rx<BleDevStatus> getBleDevStatus()
  {
    return _globalController.getBleDevStatus();
  }

}
