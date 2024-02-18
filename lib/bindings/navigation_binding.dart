import 'package:flutter_test1/controllers/navigation_controller.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';
import '../controllers/settings_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(() => NavigationController());
    //  Get.lazyPut(() => BleController(),fenix: true);
     Get.lazyPut(() => SettingsController(),fenix: true);
  }
}
