import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test1/bindings/ble_binding.dart';
import 'package:flutter_test1/ui/ble_connect_page.dart';
import 'package:get/get.dart';

import '../controllers/global_controller.dart';
import '../controllers/settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  bool switchValue = false; // Variable to track the switch state
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (context1) {
      return CupertinoPageScaffold(
          child: ListView(
        children: [
          CupertinoFormSection.insetGrouped(
            header: const Text("Connect"),
            backgroundColor: CupertinoColors.darkBackgroundGray,
            children: [
              Obx(() => _myListTile('Device',
                  status: controller.getBleDevStatus().value)),
            ],
          ),
          CupertinoFormSection.insetGrouped(
            header: const Text("ECU"),
            backgroundColor: CupertinoColors.darkBackgroundGray,
            children: [
              CupertinoListTile(
                title: Text("Ride-Hieght-On-Start"),
              ),
              CupertinoListTile(title: Text("RideMonitor Mode")),
              CupertinoListTile(title: Text("Trim Mode")),
              CupertinoListTile(title: Text("RideMonitor Mode Accuracy")),
              CupertinoListTile(title: const Text("Tank Presure Mode")),
            ],
          )
        ],
      ));
    });
  }

  Widget _myListTile(String title,
      {Function? function, BleDevStatus status = BleDevStatus.disconnected}) {
    String text = 'N/A';
    switch (status) {
      case BleDevStatus.disconnected:
        text = "Not Connected";
        break;
      case BleDevStatus.connected:
        text = controller.bleService.connectedDevice!.advName;
        break;
      case BleDevStatus.connecting:
        text = "Connecting...";
        break;

      default:
    }

    return CupertinoListTile(
      additionalInfo: Text(text),
      title: Text(title),

/*       leading: const Icon(
        CupertinoIcons.bluetooth,
        color: CupertinoColors.white,
      ), */
      trailing: const Icon(
        CupertinoIcons.right_chevron,
        color: CupertinoColors.white,
      ),
      onTap: () async {
        await controller.goToConnection();
        if (function != null) {
          print('asd');

          // await Get.to(() => BleConnectPage(), transition: Transition.rightToLeft,
          // curve: Curves.easeInOut
          // );
          /* () => function(); */
        }
      },
    );
  }
}
