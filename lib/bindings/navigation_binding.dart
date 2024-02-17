import 'package:flutter_test1/controllers/navigation_controller.dart';
import 'package:get/get.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(() => NavigationController());
  }
}
