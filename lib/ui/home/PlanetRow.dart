import 'package:flutter/material.dart';
import 'package:planets_app/models/planets.dart';
import 'package:planets_app/ui/planet_detail/DetailPage.dart';
import 'package:planets_app/ui/text_style.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;
  PlanetRow(this.planet);

  @override
  Widget build(BuildContext context) {
    final planetThumbnail = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Hero(
        tag: "planet-hero-${planet.id}",
        child: new Image(
          image: new AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    final planetCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(86.0, 16.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: Style.headerTextStyle,
          ),
          new Container(
            height: 2.0,
          ),
          new Text(planet.location, style: Style.commonTextStyle),
          new Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 2.0,
              width: 18.0,
              color: new Color(0xff00c6ff)),
          new Row(
            children: <Widget>[
              new Image.asset("assets/images/ic_distance.png", height: 12.0),
              new Container(width: 8.0),
              new Text(
                planet.distance,
                style: Style.smallTextStyle,
              ),
              new Container(width: 24.0),
              new Image.asset("assets/images/ic_gravity.png", height: 12.0),
              new Container(width: 8.0),
              new Text(
                planet.gravity,
                style: Style.smallTextStyle,
              ),
            ],
          ),
        ],
      ),
    );

    final planetCard = new Container(
      child: planetCardContent,
      height: 124.0,
      margin: new EdgeInsets.only(left: 24.0),
      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new GestureDetector(
      onTap: () => Navigator.of(context).push(new PageRouteBuilder(
        pageBuilder: (_, __, ___) => new DetailPage(planet),
      )),
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[planetCard, planetThumbnail],
        ),
      ),
    );
  }
}
