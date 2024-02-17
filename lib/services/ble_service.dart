import 'dart:typed_data';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:flutter_test1/proto/elvl.pbserver.dart';
import 'package:flutter_test1/provision/esp_prov.dart';
import 'package:get/get.dart';

import '../provision/security0.dart';
import '../provision/transport_ble.dart';

class BleService extends GetxService {
  final BleManager _bleManager = BleManager();

  EspProv? prov;

  Future<BleService> init() async {
    if (await _bleManager.isClientCreated() == false) {
      await _bleManager.createClient();
    }
    return this;
  }

  Stream<BluetoothState> bleStateStream() {
    return _bleManager.observeBluetoothState();
  }

  Stream<ScanResult> startSearch() {
    return _bleManager.startPeripheralScan(scanMode: ScanMode.balanced);
    //, uuids: [TransportBLE.PROV_BLE_SERVICE]
  }

  Future<void> stopScanBle() {
    return _bleManager.stopPeripheralScan();
  }

  Future<EspProv> startProvisioning(ScanResult scanResult) async {
    //await scanResult.peripheral.connect();

    // test
    prov = EspProv(
        transport: TransportBLE(scanResult.peripheral), security: Security0());

    await prov!.establishSession();

    return prov!;
  }

    void sendElvlCtrlCmd(CrtlCmdId cmdId) async {
    Uint8List asd = await prov!.sendReceiveElvlData(
        elvlPayload(setCtrlCmdReq: SetCtrlCmdReq(cmdId: cmdId))
            .writeToBuffer());

    elvlPayload asd3 = elvlPayload.fromBuffer(asd);

    print(asd3);
  }
}





