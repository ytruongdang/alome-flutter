import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator() : super();

  Widget build(BuildContext context) {
    return Platform.isIOS ? const CupertinoActivityIndicator() : const CircularProgressIndicator();
  }
}