import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test1/bindings/ble_binding.dart';
import 'package:flutter_test1/controllers/navigation_controller.dart';
import 'package:flutter_test1/ui/ble_connect_page.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (context1) {
      
      return CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('settings'),
          ),
          child: ListView(
            children: [
              CupertinoFormSection.insetGrouped(
                backgroundColor: CupertinoColors.darkBackgroundGray,
                children: [
                 Obx(() =>  _myListTile(
                    'Device', status: controller.bleDevStatus.value/* function: () async {
                    await Get.toNamed('/ble_connection');
                  } */
                  )),
                ],
              )
            ],
          ));
    });
  }

  Widget _myListTile(String title, {Function? function, BleDevStatus status = BleDevStatus.disconnected}) {
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
      additionalInfo:Text(text) ,
      title: Text(title),
      leading: const Icon(
        CupertinoIcons.bluetooth,
        color: CupertinoColors.white,
      ),
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
