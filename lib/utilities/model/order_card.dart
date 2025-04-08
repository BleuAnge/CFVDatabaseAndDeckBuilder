import 'dart:convert';

import 'package:cfv_database_and_deck_builder/utilities/model/card.dart';

class OrderCard extends CardModel {
  OrderCard({
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
  });

  factory OrderCard.fromMap(Map<String, dynamic> map) {
    return OrderCard(
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
    );
  }

  factory OrderCard.fromJson(String json) {
    return OrderCard.fromMap(jsonDecode(json));
  }

  Map<String, dynamic> get toMap => {
    'cardnumber': cardNumber,
    'sets': sets,
    'name': name,
    'nation': nation,
    'clan': clan,
    'grade': grade,
    'flavor': flavor,
    'series': series,
    'image_url': imageUrl,
    'effect': effect
  };

  String get toJson => jsonEncode(toMap);
}