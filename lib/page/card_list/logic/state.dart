part of 'cubit.dart';

sealed class CardListViewState extends Equatable {
  const CardListViewState();

  @override
  List<Object> get props => [];
}

final class CardListViewInitialState extends CardListViewState {}

final class CardListViewLoadingState extends CardListViewState {}

final class CardListViewLoadedState extends CardListViewState {}