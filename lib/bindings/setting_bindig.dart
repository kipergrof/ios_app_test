
import 'package:flutter_test1/controllers/settings_controller.dart';
import 'package:get/get.dart';

class SettingBinding extends Bindings {

  @override
  void dependencies()  {

    Get.lazyPut(() => SettingsController());

   // Get.create(() => ListItemController());
  }
}
