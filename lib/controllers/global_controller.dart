import 'package:get/get.dart';

enum BleDevStatus {
  disconnected,
  connecting,
  connected,
}

class GlobalController extends GetxController {

  final  _bleDevStatus = BleDevStatus.disconnected.obs;


 Rx<BleDevStatus> getBleDevStatus()
  {
    return _bleDevStatus;
  }

   void setBleDevStatus(BleDevStatus status)
  {
    _bleDevStatus.value=status;
  }

  Future<GlobalController> init() async
  {
      _bleDevStatus.value = BleDevStatus.disconnected;
      return this;
  }

}