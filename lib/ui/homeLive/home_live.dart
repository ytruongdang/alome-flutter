import 'package:flutter/material.dart';
import '../components/audioLive.dart';

class HomeLive extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new AudioLive()
        ],
      ),
    );
  }
}