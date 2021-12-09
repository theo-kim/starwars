import 'package:flutter/material.dart';
import 'package:star_wars_force_legacies/models/character.dart';
import 'package:star_wars_force_legacies/models/collected_card.dart';

class CardThumbnail extends StatelessWidget {
  CardThumbnail(this.card);

  final CollectedCard card;

  @override
  Widget build(BuildContext context) {
    late final Color borderColor;
    if (card.character.side == CharacterForceSide.dark_side) {
      borderColor = Colors.red;
    } else if (card.character.side == CharacterForceSide.light_side) {
      borderColor = Colors.blue;
    } else {
      borderColor = Colors.grey;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor, width: 5.0),
        color: Colors.white,
      ),
      child: Stack(
        children: [],
      ),
    );
  }
}
