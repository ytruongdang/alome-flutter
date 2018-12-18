import 'package:flutter/material.dart';
import './list_message.dart';
import '../../model/message.dart';
class AudioLive extends StatelessWidget {

  final Message message;

  AudioLive(this.message);

  Widget _viewer({String value}) {
    return new Row(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(5)),
            color: Colors.red,
          ),
          margin: new EdgeInsets.only(left: 16, right: 16),
          padding: new EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: new Text('Live', style: TextStyle(color: Colors.white, fontSize: 12.0),),
        ),
        new Container(
          padding: new EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
          decoration: new BoxDecoration(
            border: new Border.all(width: 0.0, color: Colors.transparent),
            borderRadius: const BorderRadius.all(const Radius.circular(5.0)),
            color: new Color.fromRGBO(0, 0, 0, 0.5)
          ),
          child: new Row(
            children: <Widget>[
              new Icon(Icons.remove_red_eye, size: 10.0, color: Colors.white),
              new Container(width: 5.0,),
              new Text(value, style: TextStyle(color: Colors.white, fontSize: 12.0))
            ],
          ),
        )
        
      ],
    );
  }

  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(left: 0, right: 0),
      child: new Stack(
        children: <Widget>[
          new Image.network('https://www.gettyimages.ie/gi-resources/images/Homepage/Hero/UK/CMS_Creative_164657191_Kingfisher.jpg', fit: BoxFit.cover, alignment: Alignment(0, 0),height: 250.0,),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(height: 10,),
              _viewer(value: '127 nguoi dang xem'),
            ],
          ),      
          new Align(
            alignment: Alignment.bottomLeft,
            child: new Container(
              height: 150.0,
              child: ListMessage(),
            )
          )
           
        ],
      ),
      height: 250.0,
    );
  }
}