import 'package:flutter/material.dart';
import '../../model/planets.dart';
class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail"),
      ),
    );
  }
}