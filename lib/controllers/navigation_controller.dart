import 'dart:async';

import 'package:flutter_test1/controllers/ble_controller.dart';
import 'package:get/get.dart';


class NavigationController extends GetxController {
  var tabIndex = 0.obs;

  //final asd=  Get.find<BleController>();

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
  
  Future<void> goToConnection()
  async {
    await Get.toNamed('/ble_connection');
  }
}