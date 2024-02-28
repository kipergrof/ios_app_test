import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';
import '../controllers/global_controller.dart';


class BleConnectPage extends GetView<BleController> {
  @override
  Widget build(BuildContext context) {
    controller.startSearch(clearResult: true);
    controller.setTimer();
    return CupertinoTabView(builder: (context1) {
      return Obx(() => CupertinoPageScaffold(
          child: ListView(
              children: [_getDevStatusWidget(controller.getBleDevStatus().value), _getBleStatusWidget(controller.bleStatus.value)])));
    });
  }

  Widget _getDevStatusWidget(BleDevStatus status) {
    switch (status) {
      case BleDevStatus.connecting:
      case BleDevStatus.connected:
        controller.bleService.scanResults.remove(controller.bleService.connectedDevice);
        return CupertinoFormSection.insetGrouped(

          backgroundColor: CupertinoColors.darkBackgroundGray,
          header: const Text('Connected to'),
          children: [
            CupertinoListTile(
              trailing: (status == BleDevStatus.connecting)
                  ? const CupertinoActivityIndicator()
                  : IconButton(onPressed: ()
                  {
                      controller.disconnect();
                  }
                  ,icon: const Icon(CupertinoIcons.xmark_circle_fill )),
              title:  Text(controller.bleService.connectedDevice?.advName?? ''),

            )
          ],
        );
      case BleDevStatus.disconnected:
      default:
        return const SizedBox();
    }
  }

  Widget _getBleStatusWidget(
    BleStatus status,
  ) {
    return CupertinoFormSection.insetGrouped(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      header: Row(
        children: [
          const Text('Devices'),
          (status == BleStatus.scannig)
              ? const Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  CupertinoActivityIndicator()
                ])
              : const SizedBox(),
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
                    ScanResult result = controller.bleService.scanResults[index];
                    controller.connect(result);
                      
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
    );
  }

  // Widget _idleWidget() {
  //   return ListView(children: [
  //     CupertinoFormSection.insetGrouped(
  //       //backgroundColor:Theme.of(context).scaffoldBackgroundColor
  //       children: [
  //         CupertinoListTile(
  //           title:
  //               Text(controller.bleService.connectedDevice?.advName ?? 'N/A'),
  //           trailing: const Icon(CupertinoIcons.checkmark_alt),
  //         )
  //       ],
  //     ),
  //     CupertinoFormSection.insetGrouped(
  //       //backgroundColor:Theme.of(context).scaffoldBackgroundColor
  //       header: const Row(
  //         children: [
  //           Text('Devices'),
  //         ],
  //       ),

  //       children: [
  //         ListView.builder(
  //           physics: const NeverScrollableScrollPhysics(),
  //           shrinkWrap: true,
  //           itemCount: controller.bleService.scanResults.length,
  //           itemBuilder: (context, index) {
  //             return MyListTile(
  //                 result:
  //                     controller.bleService.scanResults[index] as ScanResult);

  //             /* CupertinoListTile(
  //               title: Row(
  //                 children: [
  //                   Text(
  //                       (controller.bleService.scanResults[index] as ScanResult)
  //                           .device
  //                           .advName),
  //                   // const SizedBox(
  //                   //   width: 15,
  //                   // ),
  //                   // const CupertinoActivityIndicator()
  //                 ],
  //               ),
  //               onTap: () {
  //                 controller.connect(controller.bleService.scanResults[index]);
  //               },
  //               // trailing: IconButton(
  //               //   icon: const Icon(CupertinoIcons.add_circled),
  //               //   onPressed: () =>
  //               //       controller.connect(controller.scanResults[index]),
  //               // ),
  //             ); */
  //           },
  //         ),
  //       ],
  //     ),
  //     // const Row(
  //     //   children: <Widget>[Text('Devices'), CupertinoActivityIndicator()],
  //     // ),
  //   ]);
  // }

  // Widget _scanningWidget() {
  //   //controller.startSearch();
  //   return CupertinoFormSection.insetGrouped(
  //     //backgroundColor:Theme.of(context).scaffoldBackgroundColor

  //     header: const Row(
  //       children: [
  //         Text('Devices'),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         CupertinoActivityIndicator()
  //       ],
  //     ),
  //     children: [
  //       Obx(() => ListView.builder(
  //             physics: const NeverScrollableScrollPhysics(),
  //             shrinkWrap: true,
  //             itemCount: controller.bleService.scanResults.length,
  //             itemBuilder: (context, index) {
  //               return CupertinoListTile(
  //                 title: Row(
  //                   children: [
  //                     Text((controller.bleService.scanResults[index]
  //                             as ScanResult)
  //                         .device
  //                         .advName),
  //                     // const SizedBox(
  //                     //   width: 15,
  //                     // ),
  //                     // const CupertinoActivityIndicator()
  //                   ],
  //                 ),
  //                 onTap: () {
  //                   controller
  //                       .connect(controller.bleService.scanResults[index]);
  //                 },
  //                 // trailing: IconButton(
  //                 //   icon: const Icon(CupertinoIcons.add_circled),
  //                 //   onPressed: () =>
  //                 //       controller.connect(controller.scanResults[index]),
  //                 // ),
  //               );
  //             },
  //           )),
  //     ],
  //   );
  // }
}

class MyListTile extends GetWidget<ListItemController> {
  MyListTile({Key? key, required this.result}) : super(key: key);

  final ScanResult result;

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile(
        title: Row(
          children: [
            Text(result.device.advName),
          ],
        ),
        onTap: () {
          controller.connect(result);
        },
        trailing: Obx(() => Visibility(
            visible: controller.connecting.value,
            child: const CupertinoActivityIndicator()))
        //   icon: const Icon(CupertinoIcons.add_circled),
        //   onPressed: () =>
        //       controller.connect(controller.scanResults[index]),
        // ),
        );
  }
}
