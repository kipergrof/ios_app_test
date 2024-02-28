import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_test1/proto/elvl.pbserver.dart';
import 'package:flutter_test1/provision/esp_prov.dart';
import 'package:get/get.dart';

import '../provision/security0.dart';
import '../provision/transport_ble.dart';

enum BleServiceState { disconnected, scanning, connecting, connected }
class BleService extends GetxService {

  final esp32Name = "ESP32";
  EspProv? _prov;

  StreamSubscription<BluetoothConnectionState>? _deviceDisconnectSubscription;


  
  BluetoothDevice? connectedDevice;

  final RxList scanResults = [].obs;

  final Rx<BleServiceState> connectionState = BleServiceState.disconnected.obs;

  Future<BleService> init() async {
    FlutterBluePlus.setLogLevel(LogLevel.verbose, color: false);

    if (await FlutterBluePlus.isSupported == false) {
      print("Bluetooth not supported by this device");
    }

    return this;
  }

  Future<void> startScan({bool clearResult=false}) async {
    if(clearResult){

    scanResults.clear();
    }

    StreamSubscription<List<ScanResult>> scanSubscription =
        FlutterBluePlus.onScanResults.listen(
      (results) {
        //connectionState.value = BleServiceState.scanning;

        if (results.isNotEmpty) {
          ScanResult r =
              results.last; // if scan filter good only the good device found
            if (connectedDevice == null)
            {
              scanResults.addIf(!scanResults.contains(r) && (r.device.advName != ''),r);
            }else
            {
              scanResults.addIf(!scanResults.contains(r) && r.device.advName != '' && r.device.remoteId != connectedDevice!.remoteId,r);
            }

        }
      },
      onError: (e) => print("onError"),
    );

    // cleanup: cancel subscription when scanning stops
    FlutterBluePlus.cancelWhenScanComplete(scanSubscription);

    // Wait for Bluetooth enabled & permission granted
    // In your real app you should use FlutterBluePlus.adapterState.listen to handle all states
    await FlutterBluePlus.adapterState
        .where((val) => val == BluetoothAdapterState.on)
        .first;


// TODO later remote_id: BC:DD:C2:D8:F4:56 ??
    await FlutterBluePlus.startScan(timeout: const Duration(seconds: 3));

    await FlutterBluePlus.isScanning.where((val) => val == false).first;

    // -----------------
/*     if (_device != null && _device!.isConnected) {
      connectionState.value = BleServiceState.connected;
      _setDeviceDisconnectSubscription();
    } else {
      connectionState.value = BleServiceState.disconnected;
    } */
  }

  Future<void> startProvisioning(  BluetoothDevice device) async {

    connectedDevice=device;

    _prov = EspProv(transport: TransportBLE(device), security: Security0());

    ScanResult result = scanResults.firstWhere((e) => (e as ScanResult).device.remoteId == connectedDevice!.remoteId);
    
    scanResults.removeWhere((e) => (e as ScanResult).device.remoteId == connectedDevice!.remoteId);

    await _prov!.establishSession();
    
    if(!connectedDevice!.isConnected)
    {
      scanResults.add(result);
    }
  }

  Future<void> stopProvisioning() async {
    await _prov!.dispose();
    connectedDevice = null;
  }

  Future<void> sendCtrlCmd(CrtlCmdId cmd_id) async {
    Uint8List asd = await _prov!.sendReceiveElvlData(elvlPayload(
            setCtrlCmdReq: SetCtrlCmdReq(cmdId: cmd_id))
        .writeToBuffer());

    elvlPayload asd3 = elvlPayload.fromBuffer(asd);

    print(asd3);
  }

  bool isConnected( BluetoothDevice device)
  {
    return device.isConnected;
  }

  Stream<BluetoothAdapterState> getAdapterStateStream() {
    return FlutterBluePlus.adapterState;
  }

  @override
  void onClose() {
    _prov!.dispose();
    super.onClose();
  }
}
