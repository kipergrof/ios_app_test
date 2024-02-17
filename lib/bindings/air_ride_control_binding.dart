import 'package:get/get.dart';

import '../controllers/air_ride_control_controller.dart';

class AirRideControlBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(() => AirRideControlController());
  }
}
