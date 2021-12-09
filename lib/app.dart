import 'package:flutter/material.dart';
import 'package:star_wars_force_legacies/pages/landing.dart';

class Game extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars Force Legacies',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: LandingPage(),
    );
  }
}
