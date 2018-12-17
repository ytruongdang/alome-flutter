import 'package:flutter/material.dart';
import 'ui/home/home_page.dart';
import 'ui/tabbar/TabbarInsideAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabbarInsideAppBar(),
    );
  }
}
