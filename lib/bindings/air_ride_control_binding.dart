import 'package:flutter_test1/controllers/global_controller.dart';
import 'package:get/get.dart';

import '../controllers/air_ride_control_controller.dart';

class AirRideControlBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(() => AirRideControlController(),fenix: true);

  }
}
