import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class ProgressIndicator extends StatelessWidget {
  const ProgressIndicator() : super();

  Widget build(BuildContext context) {
    return Platform.isIOS ? const CupertinoActivityIndicator() : const CircularProgressIndicator();
  }
}