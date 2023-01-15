// @dart=2.9
import 'package:flutter/material.dart';
import 'package:necport/ui/home.dart';
import 'package:necport/ui/projects.dart';

import 'package:necport/utils/screen/screen_utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Necmettin Çimen",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColorBrightness: Brightness.light,
          accentColorBrightness: Brightness.light),
      initialRoute: '/',
      routes: {
        '/': (context) => MyAppChild(),
        '/projects': (context) => ProjectsPage()
      },
    );
  }
}

class MyAppChild extends StatefulWidget {
  @override
  _MyAppChildState createState() => _MyAppChildState();
}

class _MyAppChildState extends State<MyAppChild> {
  @override
  Widget build(BuildContext context) {
    // instantiating ScreenUtil singleton instance, as this will be used throughout
    // the app to get screen size and other stuff
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    return HomePage();
  }
}
