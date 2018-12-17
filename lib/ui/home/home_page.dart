import "package:flutter/material.dart";
import 'home_page_body.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new HomePageBody(),
        ],
      )
    );
  }
}