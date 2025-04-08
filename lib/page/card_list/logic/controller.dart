import 'package:cfv_database_and_deck_builder/page/card_list/logic/cubit.dart';
import 'package:cfv_database_and_deck_builder/page/card_list/ui/states/loaded.dart';
import 'package:cfv_database_and_deck_builder/utilities/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardListController extends StatefulWidget {
  const CardListController({super.key});

  @override
  State<CardListController> createState() => _CardListControllerState();
}

class _CardListControllerState extends State<CardListController> {
  @override
  void initState() {
    context.read<CardListViewCubit>().Init(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardListViewCubit, CardListViewState>(
      builder: (context, state) {
        return switch(state) {
          CardListViewLoadingState() => const Center(child: CircularProgressIndicator()),
          CardListViewLoadedState() => CardListLoadedPage(),
          CardListViewInitialState() => const Center(child: Text("Initial")),
        };
      }
    );
  }
}