import 'package:flutter/material.dart';
import 'package:planets_app/models/planets.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;
  DetailPage(this.planet);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Planet detail"),
      ),
      body: new Container(
        constraints: BoxConstraints.expand(),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(planet.name),
            new Hero(
              tag: "planet-hero-${planet.id}",
              child: new Image.asset(
                planet.image,
                width: 96.0,
                height: 96.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
