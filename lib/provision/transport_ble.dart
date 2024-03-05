import 'dart:typed_data' show Uint8List;


import 'package:flutter_blue_plus/flutter_blue_plus.dart';


class TransportBLE {

final BluetoothDevice peripheral;
  final String serviceUUID;
  late Map<String, String> nuLookup;
  final Map<String, String> lockupTable;

  List<BluetoothCharacteristic> characteristics = [];

  static const provBleService = '021a9004-0382-4aea-bff4-6b3f1c5adfb4';
  static const provBleEp = {
    //'prov-scan': 'ff50',
    'prov-session': 'ff51',
    'elvl': 'ff52',
    'proto-ver': 'ff53',
    // 'custom-data': 'ff54',
  };

  TransportBLE(this.peripheral,
      {this.serviceUUID = provBleService, this.lockupTable = provBleEp}) {
    nuLookup = <String, String>{};

    for (var name in lockupTable.keys) {
      var charsInt = int.parse(lockupTable[name]!, radix: 16);
      var serviceHex = charsInt.toRadixString(16).padLeft(4, '0');
      nuLookup[name] =
          serviceUUID.substring(0, 4) + serviceHex + serviceUUID.substring(8);
    }
  }

  Future<bool> connect() async {
    bool isConnected = peripheral.isConnected;
    if (isConnected) {
      return Future.value(true);
    }
    await peripheral.connect(mtu: 512);
    await peripheral.discoverServices().then((value) {
      for (BluetoothService sercive in value) {
        for (BluetoothCharacteristic characteristic
            in sercive.characteristics) {
          characteristics.add(characteristic);
        }
      }
    });
    return peripheral.isConnected;
  }

  Future<Uint8List> sendReceive(String? epName, Uint8List? data) async {
    BluetoothCharacteristic characteristic = characteristics.firstWhere(
        (element) =>
            element.serviceUuid.toString() == serviceUUID &&
            element.characteristicUuid.toString() == nuLookup[epName ?? ""]!);

    if (data != null) {
      if (data.isNotEmpty) {
        characteristic.write(data);
      }
    }
    return Uint8List.fromList(await characteristic.read());
  }
  Future<void> disconnect() async {
    if (peripheral.isConnected) {
      return await peripheral.disconnect();
    } else {
      return;
    }
  }

  Future<bool> checkConnect() async {
    return peripheral.isConnected;
  }
}
