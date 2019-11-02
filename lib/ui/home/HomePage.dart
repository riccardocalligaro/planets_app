import 'package:flutter/material.dart';
import 'package:planets_app/ui/home/GradientAppBar.dart';
import 'package:planets_app/ui/home/HomePageBody.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new GradientAppBar("treva"),
          new HomePageBody(),
        ],
      ),
    );
  }
}