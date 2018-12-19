import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class ErrorView extends InfoMessageView {
  static const Key tryAgainButtonKey = Key('tryAgainButton');
  const ErrorView({
    String title,
    String description,
    @required VoidCallback onRetry
  }) : super(
    actionButtonKey: tryAgainButtonKey,
    title: title,
    description: description,
    onActionButtonTapped: onRetry
  );
}

class InfoMessageView extends StatelessWidget {

  final String title;
  final String description;
  final Key actionButtonKey;
  final VoidCallback onActionButtonTapped;

  const InfoMessageView({
    Key key,
    @required this.title,
    @required this.description,
    this.actionButtonKey,
    this.onActionButtonTapped
  }) : super(key: key);

  List<Widget> _buildContent(String title, String description) => [
    const CircleAvatar(
      child: Icon(Icons.info_outline, color: Colors.white70, size: 52.0),
      backgroundColor: Colors.white12,
      radius: 42.0,
    ),
    const SizedBox(height: 16.0,),
    Text(title, style: TextStyle(fontSize: 24.0, color: Colors.white),),
    const SizedBox(height: 8.0,),
    Text(description, style: TextStyle(fontSize: 18, color: Colors.white70),)
  ];

  Widget build(BuildContext context) {
    final content = _buildContent(title, description);
    if(onActionButtonTapped != null) {
      content.add(_ActionButton(actionButtonKey, onActionButtonTapped));
    }
    return new SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: content
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final VoidCallback onActionButtonTapped;
  _ActionButton(Key key, this.onActionButtonTapped) : super(key: key);
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: FlatButton(
        onPressed: onActionButtonTapped,
        child: Text('Try Again', style: TextStyle(color: Colors.white)),
      )
      );
  }
}