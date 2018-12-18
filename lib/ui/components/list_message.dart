import 'package:flutter/material.dart';
import '../../model/message.dart';
import './chat_item.dart';
class ListMessage extends StatefulWidget {
  State createState() => new ListMessageState();
}

class ListMessageState extends State<ListMessage> {
  final List<Message> _message = messages;

  Widget build(BuildContext context) {
    return new Container(
      child: ListView.builder(
        reverse: true,
        itemBuilder: (_, int index) => ChatItem(messages[index]),
        itemCount: _message.length
      )
    );
  }

}