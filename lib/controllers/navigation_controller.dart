import 'dart:async';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:get/get.dart';


class NavigationController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
  
}