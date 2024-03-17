import 'package:flutter_test1/controllers/ble_controller.dart';
import 'package:flutter_test1/controllers/tpm_controller.dart';
//import 'package:flutter_test1/controllers/settings_controller.dart';
import 'package:get/get.dart';

class TpmBinding extends Bindings {

  @override
  void dependencies()  {

    Get.lazyPut(() => TpmController());

  }
}
