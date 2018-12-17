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
            new Row(children: <Widget>[
              new Row(
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text('Cac lay long me chong(ep2)', style: TextStyle(color: Colors.white, fontSize: 16)),
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.remove_red_eye),
                          new Text('2.183 luot xem')
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.favorite),
                          new Text('Yeu Thich')
                        ],
                      )
                    ],
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text('Tra loi cau hoi cua chuong trinh \n tich sao may man \n Nhan giai thuong hap dan'),
                  new Container(
                    decoration: new BoxDecoration(
                      color: Colors.yellowAccent,
                      borderRadius: const BorderRadius.all(const Radius.circular(15.0)),
                    ),
                    child: new Row(
                      children: <Widget>[
                        new Icon(Icons.send, size: 10, color: Colors.white,),
                        new Text('Tra Loi Cau Hoi')
                      ]
                    ),
                  )
                ],
              )
            ],)
            
          ],
        ),
      )
      
    );
  }
}