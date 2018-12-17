import 'package:flutter/material.dart';

class AudioLive extends StatelessWidget {

  Widget _viewer({String value}) {
    return new Row(
      children: <Widget>[
        new Container(
          color: Colors.red,
          margin: new EdgeInsets.only(left: 16, right: 16),
          padding: new EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: new Text('Live', style: TextStyle(color: Colors.white, fontSize: 12.0),),
        ),
        new Container(width: 10.0,),
        new Row(
          children: <Widget>[
            new Icon(Icons.panorama_fish_eye),
            new Text(value, style: TextStyle(color: Colors.red))
          ],
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(left: 0, right: 0),
      child: new Stack(
        children: <Widget>[
          new Image.network('https://www.gettyimages.ie/gi-resources/images/Homepage/Hero/UK/CMS_Creative_164657191_Kingfisher.jpg', fit: BoxFit.contain, alignment: Alignment(0, 0),),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(height: 10,),
              _viewer(value: 'hello'),
            ],
          ),          
        ],
      ),
      height: 210.0,
    );
  }
}