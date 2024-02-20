import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test1/controllers/air_ride_control_controller.dart';
import 'package:get/get.dart';

import '../controllers/ble_controller.dart';
import '../proto/elvl.pbenum.dart';

double control_button_height = 60.0;

class AirRideControlPage extends GetView<AirRideControlController> {
  @override
  Widget build(BuildContext context) {
    return  CupertinoTabView(builder: (context){
      return SafeArea(
        child: CupertinoPageScaffold(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _getTop(),
              const SizedBox(
                height: 30.0,
              ),
              _getControlSection(),
            ],
          ),
        )),
      );
    });
  }

  Widget _getControlSection() {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_getPresetButtons(), _getControlButtons()],
        ),
      ),
    );
  }

  Widget _getControlButtons() {
    return IntrinsicWidth(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getFrontControlButtons(),
            const SizedBox(
              width: 200.0,
              height: 20.0,
            ),
            _getRearControlButtons()
          ],
        ),
      ),
    );
  }

  Widget _getFrontControlButtons() {
    return Column(
      children: [
        SizedBox(
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton.filled(
            padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              controller.sendCmd(CrtlCmdId.ONE);
            },
            child: const Icon(CupertinoIcons.chevron_up), //Front all up
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getWheelCtrlBtn(CupertinoIcons.chevron_up, up: true ),
                _getWheelCtrlBtn(CupertinoIcons.chevron_down),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getWheelCtrlBtn(CupertinoIcons.chevron_up , up: true),
                _getWheelCtrlBtn(CupertinoIcons.chevron_down),
              ],
            ))
          ],
        ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: _getWheelCtrlBtn(CupertinoIcons.chevron_up),
        //     ),
        //     Expanded(
        //       child: _getWheelCtrlBtn(CupertinoIcons.chevron_up),
        //     ),
        //   ],
        // ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: _getWheelCtrlBtn(CupertinoIcons.chevron_down),
        //     ),
        //     Expanded(
        //       child: _getWheelCtrlBtn(CupertinoIcons.chevron_down),
        //     ),
        //   ],
        // ),
        SizedBox(
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton.filled(
            padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              controller.sendCmd(CrtlCmdId.ONE);
            },
            child: const Icon(CupertinoIcons.chevron_down), //Front all down
          ),
        ),
      ],
    );
  }

  Widget _getRearControlButtons() {
    return Column(
      children: [
        SizedBox(
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton.filled(
            padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              controller.sendCmd(CrtlCmdId.ONE);
            },
            child: const Icon(CupertinoIcons.chevron_up), //Front all up
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow.shade600, // Válassza meg a keret színét
                  width: 2.0, // Állítsa be a keret vastagságát
                ),
                borderRadius: const BorderRadius.all(Radius.circular(
                    8.0)), // Opcionális: Kerekítse le a sarkokat
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _getWheelCtrlBtn(CupertinoIcons.chevron_up , up: true),
                  _getWheelCtrlBtn(CupertinoIcons.chevron_down),
                ],
              ),
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getWheelCtrlBtn(CupertinoIcons.chevron_up , up: true),
                _getWheelCtrlBtn(CupertinoIcons.chevron_down),
              ],
            ))
          ],
        ),
        SizedBox(
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton.filled(
            padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              controller.sendCmd(CrtlCmdId.ONE);
            },
            child: const Icon(CupertinoIcons.chevron_down), //Front all down
          ),
        ),
      ],
    );
  }

  Widget _getWheelCtrlBtn(IconData icon,
      {bool? up = false}) {
    return SizedBox(
      height: 80.0,
      child: CupertinoButton.filled(
        borderRadius: up! ? const BorderRadius.vertical(top: Radius.circular(100.0)): const BorderRadius.vertical(bottom: Radius.circular(100.0)),
        padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
        onPressed: () {
          controller.sendCmd(CrtlCmdId.ONE);
        },
        child: Icon(icon), //Front right down
      ),
    );
  }

  double _preset_key_height = 100.0;

  Widget _getPresetButtons() {
    return SizedBox(
      width: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: _preset_key_height,
            child: CupertinoButton.filled(
              padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
              onPressed: () {
                controller.sendCmd(CrtlCmdId.ONE);
              },
              child: Text('3'),
            ),
          ),
          SizedBox(
            height: _preset_key_height,
            child: CupertinoButton.filled(
              padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
              onPressed: () {
                controller.sendCmd(CrtlCmdId.ONE);
              },
              child: const Text('2'),
            ),
          ),
          SizedBox(
            height: _preset_key_height,
            child: CupertinoButton.filled(
              padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
              onPressed: () {
                controller.sendCmd(CrtlCmdId.ONE);
              },
              child: const Text('1'),
            ),
          ),
          SizedBox(
            height: _preset_key_height,
            child: CupertinoButton.filled(
              padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
              onPressed: () {
                controller.sendCmd(CrtlCmdId.ONE);
              },
              child: const Icon(CupertinoIcons.dot_square),
            ),
          ),
          SizedBox(
            height: _preset_key_height,
            child: CupertinoButton.filled(
              padding: EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
              onPressed: () {
                controller.sendCmd(CrtlCmdId.ONE);
              },
              child: const Icon(CupertinoIcons.down_arrow),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _getTop() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            iconSize: 35.0,
            onPressed: () => {print('asd')},
            icon: const Icon(CupertinoIcons.bluetooth)),
        Text('Controller'),
        IconButton(
            iconSize: 35.0,
            onPressed: () => {print('asd')},
            icon: const Icon(CupertinoIcons.settings)),
        // CupertinoButton.filled(child: Text('asd'), onPressed: null),
      ],
    ),
  );
}
