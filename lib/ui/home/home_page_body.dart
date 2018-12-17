import 'package:flutter/material.dart';
import 'planet_row.dart';
import '../../model/planets.dart';

class HomePageBody extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Container(
        color: new Color(0xFF736AB7),
        child: new CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver: new SliverFixedExtentList(
                itemExtent: 152.0,
                delegate: new SliverChildBuilderDelegate(
                  (context, index) => new PlanetRow(planets[index]),
                  childCount: planets.length
                )
              )
            )


          ]
        )
      )
    );
  }
}