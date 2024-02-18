import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';

class BleConnectPage extends GetView<BleController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (context1) {
      return Obx(() => CupertinoPageScaffold( child:_getBleStatusWidget(controller.bleStatus.value,context)));
    });
  }

  Widget _getBleStatusWidget(BleStatus status,BuildContext context) {
    switch (status) {
      case BleStatus.connecting:
        return Text(status.name);
        break;
      case BleStatus.scannig:
        return _disconnectedWidget(context);
        break;
      case BleStatus.connected:
        return Text(status.name);
        break;
      default:
        return const Text('N/A');
    }
  }

  Widget _disconnectedWidget(BuildContext context) {
    //controller.startSearch();
    return  ListView(children: [
      CupertinoFormSection.insetGrouped(
        //backgroundColor:Theme.of(context).scaffoldBackgroundColor
            
        header: controller.bleStatus.value == BleStatus.disconnected
            ? const Row(
                children: [
                  Text('Devices'),
                ],
              )
            : const Row(
                children: [
                  Text('Devices'),
                  SizedBox(
                    width: 15,
                  ),
                  CupertinoActivityIndicator()
                ],
              ),
        children: [
          Obx(() => ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.scanResults.length,
                itemBuilder: (context, index) {
                  return CupertinoListTile(
                    title: controller.bleStatus.value != BleStatus.connecting
                        ? Row(
                            children: [
                              Text((controller.scanResults[index] as ScanResult)
                                      .peripheral
                                      .name ??
                                  'N/A'),
                            ],
                          )
                        : Row(
                            children: [
                              Text((controller.scanResults[index] as ScanResult)
                                      .peripheral
                                      .name ??
                                  'N/A'),
                              const SizedBox(
                                width: 15,
                              ),
                              const CupertinoActivityIndicator()
                            ],
                          ),
                    onTap: () {
                      controller.connect(controller.scanResults[index]);
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
