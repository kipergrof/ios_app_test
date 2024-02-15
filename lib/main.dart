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
      theme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.green.shade600,
          primaryContrastingColor: Colors.white,
          scaffoldBackgroundColor: Colors.grey.shade900),
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
    return CupertinoTabScaffold(
      // 2 <-- SEE HERE
      tabBar: CupertinoTabBar(
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          // 3 <-- SEE HERE
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrow_up_arrow_down), label: 'Control'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.gear), label: 'settings'),
        ],
      ),
      tabBuilder: (context, index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            // 4 <-- SEE HERE
            returnValue = CupertinoTabView(builder: (context) {
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
                        onPressed: () {},
                        child: const Text('3'),
                      )),
                  const SizedBox(height: 50),
                  CupertinoButton.filled(
                    onPressed: () {},
                    child: const Text('2'),
                  ),
                  const SizedBox(height: 50),
                  CupertinoButton.filled(
                    onPressed: () {},
                    child: const Text('1'),
                  ),
                ],
              )
              )
              );
            });
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(
                    child: Center(child: Text('Calls')));
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}
