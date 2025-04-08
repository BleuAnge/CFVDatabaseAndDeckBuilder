import 'package:cfv_database_and_deck_builder/utilities/data/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class CardListViewCubit extends Cubit<CardListViewState> {
  CardListViewCubit() : super(CardListViewInitialState());

  void Init(BuildContext context) async {
    final result = await context.read<CardRepository>().getCards();

    emit(CardListViewLoadedState());
  }
}