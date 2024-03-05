import 'dart:async';
import 'dart:ffi';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

import '../proto/elvl.pb.dart';
import '../services/ble_service.dart';

enum BleDevStatus {
  disconnected,
  connecting,
  connected,
}

class GlobalController extends GetxController {
  final _bleDevStatus = BleDevStatus.disconnected.obs;

  Timer? _getEcuSettingsTimer;

  final BleService bleService = Get.find();

  bool skipNextRead = false;

  final _ecuSettings = GetEcuSettingResp.create().obs;
  StreamSubscription<BluetoothConnectionState>? _connectionStateSubscription;

  Rx<BleDevStatus> getBleDevStatus() {
    return _bleDevStatus;
  }

  Rx<GetEcuSettingResp> getEcuSettings() {
    return _ecuSettings;
  }

  void _getEcuSttingTimer() {
    _getEcuSettingsTimer =
        Timer.periodic(const Duration(seconds: 1), (timer) async {
      setEcuSettings(await bleService.getEcuReq());
    });
  }

  void setEcuSettings(GetEcuSettingResp settings) {
    if (skipNextRead == false) {
      _ecuSettings.value = settings;
    } else {
      skipNextRead = false;
    }
  }

  void resetRhosState() {
    skipNextRead = true;
    _ecuSettings.update((val) {
      val?.settings.rhos = EcuSettingsRHOS.RHOS_N_A;
    });
  }

  void resetTmState() {
    skipNextRead = true;
    _ecuSettings.update((val) {
      val?.settings.tm = EcuSettingsTM.TM_N_A;
    });
  }

  void resetRmmState() {
    skipNextRead = true;
    _ecuSettings.update((val) {
      val?.settings.rmm = EcuSettingsRMM.RMM_N_A;
    });
  }

  void setBleDevStatus(BleDevStatus status) {
    _bleDevStatus.value = status;
    switch (_bleDevStatus.value) {
      case BleDevStatus.connected:
        _getEcuSttingTimer();
        break;
      case BleDevStatus.disconnected:
        _getEcuSettingsTimer!.cancel();
        // _ecuSettings.value.settings.rhos = EcuSettingsRHOS.RHOS_N_A;
        // _ecuSettings.value.settings.tm = EcuSettingsTM.TM_N_A;
        // _ecuSettings.value.settings.rmm = EcuSettingsRMM.RMM_N_A;
        // _ecuSettings.value.settings.tm = EcuSettingsTM.TM_N_A;
        // _ecuSettings.value.settings.rma = EcuSettingsRMA.RMA_N_A;
        setEcuSettings(GetEcuSettingResp.getDefault());
        break;
      default:
    }
  }

  Future<GlobalController> init() async {
    _bleDevStatus.value = BleDevStatus.disconnected;
    _connectionStateSubscription = bleService.getRandomValues().listen((event) {
      switch (event) {
        case BluetoothConnectionState.disconnected:
          if (_bleDevStatus.value != BleDevStatus.connecting) {
            bleService.stopProvisioning();
            setBleDevStatus(BleDevStatus.disconnected);
          }
          break;
        default:
      }
    });
    return this;
  }

  @override
  void onClose() {
    _connectionStateSubscription!.cancel();
    super.onClose();
  }
}
