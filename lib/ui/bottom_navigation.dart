import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test1/controllers/air_ride_control_controller.dart';
import 'package:flutter_test1/controllers/navigation_controller.dart';
import 'package:flutter_test1/ui/ble_connect_page.dart';
import 'package:get/get.dart';

import 'air_ride_control_page.dart';

class BottomNavigation extends GetView<NavigationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
          
      bottomNavigationBar:
          _bottomNavigationMenu(context),
      body: Obx(() => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              AirRideControlPage(),
              BleConnectPage(),
                          ],
          )),
          
    ),
    
    );
  }
  Widget _bottomNavigationMenu(BuildContext context){
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: CupertinoTabBar(
            // showUnselectedLabels: true,
            // showSelectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex.value,
            // unselectedItemColor: Colors.white.withOpacity(0.5),
            // selectedItemColor: Colors.white,
            // unselectedLabelStyle: unselectedLabelStyle,
            // selectedLabelStyle: selectedLabelStyle,
             items: const <BottomNavigationBarItem>[
            // 3 <-- SEE HERE
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.arrow_up_arrow_down),
                label: 'Control'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.gear), label: 'Settings'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.gear), label: 'BLE Connect'),
          ],
          ),
        ));
  }
}