import 'package:cfv_database_and_deck_builder/router/routes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouterCubit extends Cubit<RouterObject> {
  RouterCubit() : super(const RouterObject(currentRoute: RoutesEnum.CARD_LIST));

  void changeRoute(RoutesEnum route) => emit(RouterObject(currentRoute: route));
}

class RouterObject extends Equatable {
  final RoutesEnum currentRoute;

  const RouterObject({required this.currentRoute});
  
  @override
  List<Object?> get props => [
    currentRoute
  ];

  RouterObject copyWith({
    RoutesEnum? currentRoute
  }) => RouterObject(
    currentRoute: currentRoute ?? this.currentRoute
  );
}