import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 1 <-- SEE HERE
    return CupertinoApp(
      // 2 <-- SEE HERE
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoSimpleHomePage(),
    );
  }
}

class CupertinoSimpleHomePage extends StatefulWidget {
  const CupertinoSimpleHomePage({Key? key}) : super(key: key);

  @override
  _CupertinoSimpleHomePageState createState() =>
      _CupertinoSimpleHomePageState();
}

class _CupertinoSimpleHomePageState extends State<CupertinoSimpleHomePage> {
  @override
  Widget build(BuildContext context) {
    // 3 <-- SEE HERE
    return const CupertinoPageScaffold(
      // 4 <-- SEE HERE
      navigationBar: CupertinoNavigationBar(
        middle: Text('Chat App'),
      ),
      child: Center(
        child: Text('Hi'),
      ),
    );
  }
}