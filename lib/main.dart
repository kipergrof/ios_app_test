import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:flutter_test1/bindings/ble_binding.dart';
import 'package:flutter_test1/bindings/navigation_binding.dart';
import 'package:flutter_test1/controllers/ble_controller.dart';
import 'package:flutter_test1/proto/elvl.pbenum.dart';
import 'package:get/get.dart';

import 'bindings/air_ride_control_binding.dart';
import 'services/ble_service.dart';
import 'ui/bottom_navigation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(const MyApp());
}

Future<void> initServices() async {
  log('Starting services ...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.putAsync(() => BleService().init());

  log('All services started...');
}
const double _smallSize = 10.0;
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 1 <-- SEE HERE
    return GetCupertinoApp(
      // 2 <-- SEE HERE
      theme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.green.shade600,
          primaryContrastingColor: Colors.white,
          scaffoldBackgroundColor: Colors.grey.shade900),
      //home: CupertinoSimpleHomePage(),
      //getPages: [GetPage(name: '/', page: ()=> CupertinoSimpleHomePage(),binding: BleBinding())],
      getPages: [GetPage(name: '/', page: ()=> BottomNavigation(),bindings: [NavigationBinding(),BleBinding(),AirRideControlBinding()])],
    );
  }
}

// class CupertinoSimpleHomePage extends StatefulWidget {
//   const CupertinoSimpleHomePage({Key? key}) : super(key: key);

//   @override
//   _CupertinoSimpleHomePageState createState() =>
//       _CupertinoSimpleHomePageState();
//}

// class CupertinoSimpleHomePage extends GetView<BleController> {
//   @override
//   Widget build(BuildContext context) {
//     // 3 <-- SEE HERE

//     return SafeArea(
//       child: CupertinoTabScaffold(
//         // 2 <-- SEE HERE
//         tabBar: CupertinoTabBar(
//           currentIndex: 1,
//           items: const <BottomNavigationBarItem>[
//             // 3 <-- SEE HERE
//             BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.arrow_up_arrow_down),
//                 label: 'Control'),
//             BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.gear), label: 'Settings'),
//             BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.gear), label: 'BLE Connect'),
//           ],
//         ),
//         tabBuilder: (context, index) {
//           late final CupertinoTabView returnValue;
//           switch (index) {
//             case 0:
//               // 4 <-- SEE HERE
//               returnValue = CupertinoTabView(builder: (context) {
//                 return CupertinoPageScaffold(
//                     child: Center(
//                         child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(
//                         height: 150,
//                         width: 60,
//                         child: CupertinoButton.filled(
//                           alignment: Alignment.center,
//                           padding: const EdgeInsets.all(0.0),
//                           //color: Colors.grey.shade700,
//                           onPressed: () {
//                             controller.sendCmd(CrtlCmdId.THREE);
//                           },
//                           child: const Text('3'),
//                         )),
//                     const SizedBox(height: 50),
//                     CupertinoButton.filled(
//                       onPressed: () {
//                         controller.sendCmd(CrtlCmdId.TWO);
//                       },
//                       child: const Text('2'),
//                     ),
//                     const SizedBox(height: 50),
//                     CupertinoButton.filled(
//                       onPressed: () {
//                        controller.sendCmd(CrtlCmdId.ONE);
//                       },
//                       child: const Text('1'),
//                     ),
//                   ],
//                 )));
//               });
//               break;
//             case 1:
//               returnValue = CupertinoTabView(
//                 builder: (context) {
//                   return const CupertinoPageScaffold(
//                       child: Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: Column(
//                       children: <Widget>[
//                         Row(
//                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             SizedBox(
//                                 width: 250,
//                                 child: Text('Ride-Hieght-On-Start:')),
//                             Text('OFF'),
//                           ],
//                         ),
//                         Row(
//                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             SizedBox(
//                                 width: 250, child: Text('RideMonitor Mode:')),
//                             Text('OFF'),
//                           ],
//                         ),
//                         Row(
//                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             SizedBox(width: 250, child: Text('TrimMode:')),
//                             Text('???'),
//                           ],
//                         ),
//                         Row(
//                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             SizedBox(
//                                 width: 250,
//                                 child: Text('RideMonitor Mode Accuracy:')),
//                             Text('???'),
//                           ],
//                         ),
//                         Row(
//                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: <Widget>[
//                             SizedBox(
//                                 width: 250, child: Text('Tank Presure Mode:')),
//                             Text('150'),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ));
//                 },
//               );
//               break;
//             case 2:
//               returnValue = BleConnectPage.;
//               break;
//           }
//           return returnValue;
//         },
//       ),
//     );
//   }
// }
