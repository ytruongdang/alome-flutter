import 'package:flutter/material.dart';
import '../../model/message.dart';
class ChatItem extends StatelessWidget {

  final Message message;

  ChatItem(this.message);
  
  Widget _avatar({String avatar}) {
    return new Container(
      decoration: new BoxDecoration(
        
      ),
      height: 30.0,
      width: 30.0,
      child: new CircleAvatar(
        backgroundImage:  new NetworkImage(avatar),
        radius: 15.0,
        backgroundColor: Colors.lightGreen,
      )
    );
  }

  Widget _content({String username, String time, String text}) {
    return 
      new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Text(username),
            new Text('| ' + time),
          ],
        ),
        new Text(text)
        
      ],
    );
  }
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(left: 16, top: 5, bottom: 5),
      child: new Row(
        children: <Widget>[
          _avatar(avatar: message.avatar),
          new Container(width: 5.0),
          _content(username: message.username, time: message.time, text: message.text)
        ],
      ),
    );
  }
}