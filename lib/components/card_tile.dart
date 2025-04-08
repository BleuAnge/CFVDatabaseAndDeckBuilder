import 'package:cfv_database_and_deck_builder/utilities/model/card.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final CardModel card;

  const CardTile({
    required this.card,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      padding: const EdgeInsets.all(8.0),
    );
  }
}