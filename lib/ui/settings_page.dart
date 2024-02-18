import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:flutter_test1/ui/ble_connect_page.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
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
                  _myListTile('Connection', function: () async {
                    await Get.toNamed('/ble_connection');
                  }),
                ],
              )
            ],
          ));
    });
  }

  Widget _myListTile(String title, {Function? function}) {
    return CupertinoListTile(
      title: Text(title),
      trailing: const Icon(
        CupertinoIcons.right_chevron,
        color: CupertinoColors.white,
      ),
      onTap: () async {
        if (function != null) {
          print('asd');
          await Get.to(() => BleConnectPage(), transition: Transition.rightToLeft,
          curve: Curves.easeInOut,
          );
          () => function();
        }
      },
    );
  }
}
