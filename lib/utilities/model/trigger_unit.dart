import 'dart:convert';

import 'package:cfv_database_and_deck_builder/utilities/model/card.dart';

class TriggerUnit extends CardModel {
  final int power;
  final int shield;
  final String trigger;
  final String race;

  TriggerUnit({
    required super.cardNumber, 
    super.sets, 
    required super.name, 
    super.nation, 
    super.clan, 
    super.grade, 
    super.flavor, 
    super.series, 
    super.imageUrl, 
    super.effect,
    required this.power, 
    required this.shield, 
    required this.trigger, 
    required this.race
  });

  factory TriggerUnit.fromMap(Map<String, dynamic> map) {
    return TriggerUnit(
      cardNumber: map['cardnumber'],
      sets: map['sets'],
      name: map['name'],
      nation: map['nation'],
      clan: map['clan'],
      grade: map['grade'],
      flavor: map['flavor'],
      series: map['series'],
      imageUrl: map['image_url'],
      effect: map['effect'],
      power: map['power'],
      shield: map['shield'],
      trigger: map['card_trigger'],
      race: map['race'],
    );
  }

  factory TriggerUnit.fromJson(String json) {
    return TriggerUnit.fromMap(jsonDecode(json));
  }

  Map<String, dynamic> get toMap {
    return {
      'cardnumber': cardNumber,
      'sets': sets,
      'name': name,
      'nation': nation,
      'clan': clan,
      'grade': grade,
      'flavor': flavor,
      'series': series,
      'image_url': imageUrl,
      'effect': effect,
      'power': power,
      'shield': shield,
      'card_trigger': trigger,
      'race': race,
    };
  }

  String get toJson => jsonEncode(toMap);
}