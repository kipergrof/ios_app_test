import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';

class BleConnectPage extends GetView<BleController> {
  @override
  Widget build(BuildContext context) {
    controller.startSearch(clearResult: true);
    controller.setTimer();
    return CupertinoTabView(builder: (context1) {
      return Obx(() => CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: IconButton(
                onPressed: () => Get.back(), icon: Icon(CupertinoIcons.back)),
          ),
          child: _getBleStatusWidget(controller.bleStatus.value, context)));
    });
  }

  Widget _getBleStatusWidget(BleStatus status, BuildContext context) {
    switch (status) {
      case BleStatus.connecting:
        return Text(status.name);
        break;
      case BleStatus.scannig:
        return _scanningWidget(context);
        break;
      case BleStatus.idle:
        return _idleWidget();
        break;
      case BleStatus.connected:
        return Text(status.name);
        break;
      default:
        return const Text('N/A');
    }
  }

  Widget _idleWidget() {
    return ListView(children: [
      CupertinoFormSection.insetGrouped(
        //backgroundColor:Theme.of(context).scaffoldBackgroundColor
        children: [
          CupertinoListTile(
            title:
                Text(controller.bleService.connectedDevice?.advName ?? 'N/A'),
            trailing: const Icon(CupertinoIcons.checkmark_alt),
          )
        ],
      ),
      CupertinoFormSection.insetGrouped(
        //backgroundColor:Theme.of(context).scaffoldBackgroundColor
        header: const Row(
          children: [
            Text('Devices'),
          ],
        ),

        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.bleService.scanResults.length,
            itemBuilder: (context, index) {
              return CupertinoListTile(
                title: Row(
                  children: [
                    Text(
                        (controller.bleService.scanResults[index] as ScanResult)
                            .device
                            .advName),
                    // const SizedBox(
                    //   width: 15,
                    // ),
                    // const CupertinoActivityIndicator()
                  ],
                ),
                onTap: () {
                  controller.connect(controller.bleService.scanResults[index]);
                },
                // trailing: IconButton(
                //   icon: const Icon(CupertinoIcons.add_circled),
                //   onPressed: () =>
                //       controller.connect(controller.scanResults[index]),
                // ),
              );
            },
          ),
        ],
      ),
      // const Row(
      //   children: <Widget>[Text('Devices'), CupertinoActivityIndicator()],
      // ),
    ]);
  }

  Widget _scanningWidget(BuildContext context) {
    //controller.startSearch();
    return ListView(children: [
      CupertinoFormSection.insetGrouped(
        //backgroundColor:Theme.of(context).scaffoldBackgroundColor

        header: const Row(
          children: [
            Text('Devices'),
            SizedBox(
              width: 10,
            ),
            CupertinoActivityIndicator()
          ],
        ),
        children: [
          Obx(() => ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.bleService.scanResults.length,
                itemBuilder: (context, index) {
                  return CupertinoListTile(
                    title: Row(
                      children: [
                        Text((controller.bleService.scanResults[index]
                                as ScanResult)
                            .device
                            .advName),
                        // const SizedBox(
                        //   width: 15,
                        // ),
                        // const CupertinoActivityIndicator()
                      ],
                    ),
                    onTap: () {
                      controller
                          .connect(controller.bleService.scanResults[index]);
                    },
                    // trailing: IconButton(
                    //   icon: const Icon(CupertinoIcons.add_circled),
                    //   onPressed: () =>
                    //       controller.connect(controller.scanResults[index]),
                    // ),
                  );
                },
              )),
        ],
      ),
      // const Row(
      //   children: <Widget>[Text('Devices'), CupertinoActivityIndicator()],
      // ),
    ]);
  }
}
