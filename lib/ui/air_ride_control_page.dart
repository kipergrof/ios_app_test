import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test1/controllers/air_ride_control_controller.dart';
import 'package:get/get.dart';

//import '../controllers/settings_controller.dart';
import '../proto/elvl.pbenum.dart';

Color button_outline_color = Colors.grey.shade700;

Color button_icon_color = Colors.white;

double control_button_height = 50.0;

double precent_box_size = 20.0;

class AirRideControlPage extends GetView<AirRideControlController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        //backgroundColor: Colors.red,
        child: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _getTop(context),
            const SizedBox(
              height: 5.0,
            ),
            //  Container(
            //   color: Colors.red,
            //   height: 40.0,
            // ),
            // const SizedBox(
            //   height: 20.0,
            // ),
            _getControlSection(),
          ],
        ),
      ),
    ));
  }

  Widget _getControlSection() {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              width: 150.0,
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
        Container(
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                right: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                top: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 0.5, // Felső keret vastagságának beállítása
                ),
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(360.0))),
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(360.0)),
            padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              print('asd');
            },
            child: Icon(
                color: button_icon_color,
                CupertinoIcons.chevron_up), //Front all up
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getWheelCtrlBtn(CupertinoIcons.chevron_up, up: true),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color:
                            button_outline_color, // Felső keret színének beállítása
                        width: 2.0, // Felső keret vastagságának beállítása
                      ),
                      right: BorderSide(
                        color:
                            button_outline_color, // Felső keret színének beállítása
                        width: 2.0, // Felső keret vastagságának beállítása
                      ),
                    ),
                  ),
                  height: precent_box_size,
                ),
                _getWheelCtrlBtn(CupertinoIcons.chevron_down),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getWheelCtrlBtn(CupertinoIcons.chevron_up, up: true),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color:
                            button_outline_color, // Felső keret színének beállítása
                        width: 2.0, // Felső keret vastagságának beállítása
                      ),
                      right: BorderSide(
                        color:
                            button_outline_color, // Felső keret színének beállítása
                        width: 2.0, // Felső keret vastagságának beállítása
                      ),
                    ),
                  ),
                  height: precent_box_size,
                ),
                _getWheelCtrlBtn(CupertinoIcons.chevron_down),
              ],
            ))
          ],
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                right: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                bottom: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 0.5, // Felső keret vastagságának beállítása
                ),
              ),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(360.0))),
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton(
            borderRadius:
                const BorderRadius.vertical(bottom: Radius.circular(360.0)),
            padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              controller.sendCmd(CrtlCmdId.ONE);
            },
            child: Icon(
                color: button_icon_color,
                CupertinoIcons.chevron_down), //Front all down
          ),
        ),
      ],
    );
  }

  Widget _getRearControlButtons() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                right: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                top: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 0.5, // Felső keret vastagságának beállítása
                ),
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(360.0))),
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(360.0)),
            padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              print('asd');
            },
            child: Icon(
                color: button_icon_color,
                CupertinoIcons.chevron_up), //Front all up
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     ///color: Colors.yellow.shade600, // Válassza meg a keret színét
              //     width: 2.0, // Állítsa be a keret vastagságát
              //   ),
              //   borderRadius: const BorderRadius.all(Radius.circular(
              //       8.0)), // Opcionális: Kerekítse le a sarkokat
              // ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _getWheelCtrlBtn(CupertinoIcons.chevron_up, up: true),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color:
                              button_outline_color, // Felső keret színének beállítása
                          width: 2.0, // Felső keret vastagságának beállítása
                        ),
                        right: BorderSide(
                          color:
                              button_outline_color, // Felső keret színének beállítása
                          width: 2.0, // Felső keret vastagságának beállítása
                        ),
                      ),
                    ),
                    height: precent_box_size,
                  ),
                  _getWheelCtrlBtn(CupertinoIcons.chevron_down),
                ],
              ),
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _getWheelCtrlBtn(CupertinoIcons.chevron_up, up: true),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color:
                            button_outline_color, // Felső keret színének beállítása
                        width: 2.0, // Felső keret vastagságának beállítása
                      ),
                      right: BorderSide(
                        color:
                            button_outline_color, // Felső keret színének beállítása
                        width: 2.0, // Felső keret vastagságának beállítása
                      ),
                    ),
                  ),
                  height: precent_box_size,
                ),
                _getWheelCtrlBtn(CupertinoIcons.chevron_down),
              ],
            ))
          ],
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                right: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0, // Felső keret vastagságának beállítása
                ),
                bottom: BorderSide(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 0.5, // Felső keret vastagságának beállítása
                ),
              ),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(360.0))),
          height: control_button_height,
          width: double.infinity,
          child: CupertinoButton(
            padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
            onPressed: () {
              controller.sendCmd(CrtlCmdId.ONE);
            },
            child: Icon(
                color: button_icon_color,
                CupertinoIcons.chevron_down), //Front all down
          ),
        ),
      ],
    );
  }

  Widget _getWheelCtrlBtn(IconData icon, {bool? up = false}) {
    double _height = 75;
    return SizedBox(
      height: _height,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
              color: button_outline_color, // Felső keret színének beállítása
              width: 2.0, // Felső keret vastagságának beállítása
            ),
            right: BorderSide(
              color: button_outline_color, // Felső keret színének beállítása
              width: 2.0, // Felső keret vastagságának beállítása
            ),
          ),
          borderRadius: up!
              ? const BorderRadius.vertical(top: Radius.circular(360.0))
              : const BorderRadius.vertical(bottom: Radius.circular(360.0)),
        ),
        child: CupertinoButton(
          alignment: up! ? Alignment.topCenter : Alignment.bottomCenter,
          borderRadius: up!
              ? const BorderRadius.vertical(top: Radius.circular(360.0))
              : const BorderRadius.vertical(bottom: Radius.circular(360.0)),
          padding: EdgeInsets.all(_height / 8.0), // Állítsa a padding-et 0-ra
          onPressed: () {
            print("btn press");
            //controller.sendCmd(CrtlCmdId.ONE);
          },
          child: Icon(color: button_icon_color, icon), //Front right down
        ),
      ),
    );
  }

  double _preset_key_height = 100.0;

  Widget _getPresetButtons() {
    return SizedBox(
      width: control_button_height * 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color:
                        button_outline_color, // Felső keret színének beállítása
                    width: 2.0, // Felső keret vastagságának beállítása
                  ),
                  left: BorderSide(
                    color:
                        button_outline_color, // Felső keret színének beállítása
                    width: 2.0, // Felső keret vastagságának beállítása
                  ),
                  right: BorderSide(
                    color:
                        button_outline_color, // Felső keret színének beállítása
                    width: 2.0, // Felső keret vastagságának beállítása
                  ),
                ),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(360.0)),
              ),
              child: CupertinoButton(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(360.0),
                    topRight: Radius.circular(360.0)),
                padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
                onPressed: () {
                  controller.sendCmd(CrtlCmdId.ONE);
                },
                child: const Text('3'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(360.0)),
              ),
              child: CupertinoButton(
                padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
                onPressed: () {
                  controller.sendCmd(CrtlCmdId.ONE);
                },
                child: const Text('2'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        button_outline_color, // Felső keret színének beállítása
                    width: 2.0, // Felső keret vastagságának beállítása
                  ),
                  left: BorderSide(
                    color:
                        button_outline_color, // Felső keret színének beállítása
                    width: 2.0, // Felső keret vastagságának beállítása
                  ),
                  right: BorderSide(
                    color:
                        button_outline_color, // Felső keret színének beállítása
                    width: 2.0, // Felső keret vastagságának beállítása
                  ),
                ),
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(360.0)),
              ),
              child: CupertinoButton(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(360.0),
                    bottomRight: Radius.circular(360.0)),
                padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
                onPressed: () {
                  controller.sendCmd(CrtlCmdId.ONE);
                },
                child: const Text('1'),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      button_outline_color, // Felső keret színének beállítása
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(360.0)),
              ),
              child: CupertinoButton(
                borderRadius: BorderRadius.all(Radius.circular(360.0)),
                padding: const EdgeInsets.all(0.0), // Állítsa a padding-et 0-ra
                onPressed: () {
                  controller.sendCmd(CrtlCmdId.ONE);
                },
                child: Icon(color: button_icon_color, Icons.filter_list),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getTop(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              iconSize: 35.0,
              onPressed: () async {
                await controller.sendCmd(CrtlCmdId.ONE);
              },
              icon: const Icon(CupertinoIcons.bluetooth)),
          const Text('Air - X'),
          IconButton(
              iconSize: 35.0,
              onPressed: () async {
                await controller.goToConnection();
              },
              icon: const Icon(CupertinoIcons.settings)),
          // CupertinoButton.filled(child: Text('asd'), onPressed: null),
        ],
      ),
    );
  }
}
