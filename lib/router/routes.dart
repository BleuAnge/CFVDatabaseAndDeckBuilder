// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum RoutesEnum {
  CARD_LIST,
  DECK_BUILDER,
  DECK_LIST;

  String get value => toString().split('.').last;

  String get route => "/${value.toLowerCase()}";

  String get name => value.split("_").map(
    (item) => item.toLowerCase().replaceFirst(item[0], item[0].toUpperCase())
  ).join();

  IconData get icon {
    switch (this) {
      case RoutesEnum.CARD_LIST:
        return Icons.list;
      case RoutesEnum.DECK_BUILDER:
        return Icons.build;
      case RoutesEnum.DECK_LIST:
        return Icons.list;
    }
  }
}