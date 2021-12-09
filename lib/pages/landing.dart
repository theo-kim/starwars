import 'package:flutter/material.dart';

import 'package:star_wars_force_legacies/components/navigation_button.dart';
import 'package:star_wars_force_legacies/pages/collection.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  _transitionPage(StatefulWidget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.black),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: NavigationButton(
                onPressed: () {},
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                background: Colors.red,
                label: "Play",
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: NavigationButton(
                            onPressed: () => _transitionPage(CollectionPage()),
                            background: Colors.amber,
                            margin: EdgeInsets.only(
                                left: 10.0,
                                top: 40.0,
                                bottom: 50.0,
                                right: 20.0),
                            label: "Collection",
                          ),
                        ),
                        Expanded(
                          child: NavigationButton(
                            onPressed: () {},
                            background: Colors.cyan,
                            margin: EdgeInsets.only(
                                left: 10.0,
                                top: 40.0,
                                bottom: 50.0,
                                right: 20.0),
                            label: "Shop",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: NavigationButton(
                      onPressed: () {},
                      background: Colors.grey,
                      margin: EdgeInsets.only(
                          left: 10.0, top: 40.0, bottom: 50.0, right: 20.0),
                      label: "Settings",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
