import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';

class BleConnectPage extends GetView<BleController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (context) {
      return Obx(() => _getBleStatusWidget(controller.bleStatus.value));
    });
  }

  Widget _getBleStatusWidget(BleStatus status) {
    switch (status) {
      case BleStatus.connecting:
        return Text(status.name);
        break;
      case BleStatus.disconnected:
      case BleStatus.scannig:
        return _disconnectedWidget();
        break;
      case BleStatus.connected:
        return Text(status.name);
        break;
      default:
        return const Text('N/A');
    }
  }

  Widget _disconnectedWidget() {
    return CupertinoPageScaffold(
        child: ListView(children: [
      Obx(() => CupertinoButton.filled(
          onPressed: () {
            controller.bleStatus.value == BleStatus.disconnected ? controller.startSearch(): controller.stopSearch();
          },
          child: controller.bleStatus.value == BleStatus.disconnected ? const Text('Search'): const Row(
            children: [
               Text('Stop searching'),
               CupertinoActivityIndicator(
                    )
            ],
          )
          )
          ),
      Obx(() => ListView.builder(
            shrinkWrap: true,
            itemCount: controller.scanResults.length,
            itemBuilder: (context, index) {
              return CupertinoListTile(
                title: Text((controller.scanResults[index] as ScanResult)
                        .peripheral
                        .name ??
                    'N/A'),
                trailing: IconButton(
                  icon: const Icon(Icons.bluetooth_connected),
                  onPressed: () =>
                      controller.connect(controller.scanResults[index]),
                ),
              );
            },
          ))
    ]));
  }
}
