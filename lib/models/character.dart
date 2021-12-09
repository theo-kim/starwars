import 'package:flutter/material.dart';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'character.g.dart';

abstract class Character implements Built<Character, CharacterBuilder> {
  Character._();

  Image get image;
  String get name;
  CharacterStats get baseStats;
  List<CharacterTag> get tags;
  List<CharacterAffiliation> get affiliations;
  CharacterForceSide get side;

  factory Character([updates(CharacterBuilder b)]) = _$Account;
  static Serializer<Character> get serializer => _$characterSerializer;
}

abstract class CharacterStats
    extends Built<CharacterStats, CharacterStatsBuilder> {
  CharacterStats._();

  // VISIBLE STATS
  double get damage;
  double get armour;
  double get durability;
  double get speed;
  double get resistance;
  double get effectiveness;

  // NON VISIBLE STATS
  double get presidence;
  double get luck;
  double get loyalty;
  double get determination;
}

class CharacterTag extends EnumClass {
  // Main saga movies
  static const CharacterTag episode_1 = _$episode_1;
  static const CharacterTag episode_2 = _$episode_2;
  static const CharacterTag episode_3 = _$episode_3;
  static const CharacterTag episode_4 = _$episode_4;
  static const CharacterTag episode_5 = _$episode_5;
  static const CharacterTag episode_6 = _$episode_6;
  static const CharacterTag episode_7 = _$episode_7;
  static const CharacterTag episode_8 = _$episode_8;
  static const CharacterTag episode_9 = _$episode_9;

  // Spin off movies
  static const CharacterTag rogue_one = _$rogue_one;
  static const CharacterTag solo = _$solo;

  // Shows
  static const CharacterTag clone_wars = _$clone_wars;
  static const CharacterTag rebels = _$rebels;
  static const CharacterTag resistance = _$resistance;
  static const CharacterTag bad_batch = _$bad_batch;
  static const CharacterTag mandalorian = _$mandalorian;

  // Roles
  static const CharacterTag force_user = _$force_user;
  static const CharacterTag corrupted = _$corrupted;
  static const CharacterTag redeemed = _$redeemed;

  const CharacterTag._(String name) : super(name);

  static BuiltSet<CharacterTag> get values => _$tag_values;
  static CharacterTag valueOf(String name) => _$valueOfTag(name);

  static Serializer<CharacterTag> get serializer => _$characterTagSerializer;
}

class CharacterAffiliation extends EnumClass {
  static const CharacterAffiliation jedi = _$jedi;
  static const CharacterAffiliation sith = _$sith;
  static const CharacterAffiliation rebel = _$rebel;
  static const CharacterAffiliation empire = _$empire;
  static const CharacterAffiliation resistance = _$resistance;
  static const CharacterAffiliation first_order = _$first_order;
  static const CharacterAffiliation galactic_republic = _$galactic_republic;
  static const CharacterAffiliation seperatist = _$seperatist;
  static const CharacterAffiliation bounty_hunter = _$bounty_hunter;

  const CharacterAffiliation._(String name) : super(name);

  static BuiltSet<CharacterAffiliation> get values => _$affilitation_values;
  static CharacterAffiliation valueOf(String name) =>
      _$valueOfAffilitation(name);

  static Serializer<CharacterAffiliation> get serializer =>
      _$characterAffiliationSerializer;
}

class CharacterForceSide extends EnumClass {
  static const CharacterForceSide dark_side = _$dark_side;
  static const CharacterForceSide light_side = _$light_side;
  static const CharacterForceSide neutral = _$neutral;

  const CharacterForceSide._(String name) : super(name);

  static BuiltSet<CharacterForceSide> get values => _$force_valies;
  static CharacterForceSide valueOf(String name) => _$valueOfForceSide(name);

  static Serializer<CharacterForceSide> get serializer =>
      _$characterForceSideSerializer;
}
