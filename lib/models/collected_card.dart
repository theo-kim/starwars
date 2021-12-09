import 'package:built_value/built_value.dart';
import 'package:star_wars_force_legacies/models/character.dart';

part 'collected_card.g.dart';

abstract class CollectedCard
    implements BuiltValue<CollectedCard, CollectedCardBuilder> {
  CollectedCard._();

  Character get character;
}
