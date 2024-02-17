import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test1/controllers/air_ride_control_controller.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';
import '../proto/elvl.pbenum.dart';

class AirRideControlPage extends GetView<AirRideControlController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(builder: (context) {
                 return CupertinoPageScaffold(
                    child: Center(
                        child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 150,
                        width: 60,
                        child: CupertinoButton.filled(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(0.0),
                          //color: Colors.grey.shade700,
                          onPressed: () {
                            controller.sendCmd(CrtlCmdId.THREE);
                          },
                          child: const Text('3'),
                        )),
                    const SizedBox(height: 50),
                    CupertinoButton.filled(
                      onPressed: () {
                        controller.sendCmd(CrtlCmdId.TWO);
                      },
                      child: const Text('2'),
                    ),
                    const SizedBox(height: 50),
                    CupertinoButton.filled(
                      onPressed: () {
                       controller.sendCmd(CrtlCmdId.ONE);
                      },
                      child: const Text('1'),
                    ),
                  ],
                )));
              });
  }
}

