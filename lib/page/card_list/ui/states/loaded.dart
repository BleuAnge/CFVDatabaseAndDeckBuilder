import 'package:cfv_database_and_deck_builder/page/card_list/ui/components/filter.dart';
import 'package:flutter/material.dart';

class CardListLoadedPage extends StatelessWidget {
  const CardListLoadedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: FilterDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Card List"
        ),
      ),
    );
  }
}