import 'package:flutter/material.dart';
import '../components/audioLive.dart';

class HomeLive extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          color: Colors.red
        ),
        child: new Column(
          children: <Widget>[
            new AudioLive(),
            new Row(
              children: <Widget>[
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text('Cac lay long me chong(ep2)', style: TextStyle(color: Colors.white, fontSize: 16))
                  ],
                )
              ],
            )
          ],
        ),
      )
      
    );
  }
}