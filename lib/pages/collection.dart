import 'package:flutter/material.dart';
import 'package:star_wars_force_legacies/components/card_thumbnail.dart';
import 'package:star_wars_force_legacies/models/collected_card.dart';

// CollectedCard _default = CollectedCardBuilder();

class CollectionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        primary: true,
        children: [
          // CardThumbnail(),
        ],
      ),
    );
  }
}
