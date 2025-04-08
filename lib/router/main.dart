import 'package:cfv_database_and_deck_builder/page/card_list/logic/controller.dart';
import 'package:cfv_database_and_deck_builder/page/card_list/logic/cubit.dart';
import 'package:cfv_database_and_deck_builder/router/logic/controller.dart';
import 'package:cfv_database_and_deck_builder/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/card_list',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return RouterController(child: child);
      },
      routes: [
        GoRoute(
          path: RoutesEnum.CARD_LIST.route,
          name: RoutesEnum.CARD_LIST.name,
          pageBuilder: (context, state) {
            return MaterialPage(
              child: BlocProvider<CardListViewCubit>(
                create: (context) => CardListViewCubit(),
                child: CardListController()
              )
            );
          },
        ),
        GoRoute(
          path: RoutesEnum.DECK_BUILDER.route,
          name: RoutesEnum.DECK_BUILDER.name,
          pageBuilder: (context, state) {
            return MaterialPage(child: Center(child: Text(RoutesEnum.DECK_BUILDER.name)));
          }
        ),
        GoRoute(
          path: RoutesEnum.DECK_LIST.route,
          name: RoutesEnum.DECK_LIST.name,
          pageBuilder: (context, state) {
            return MaterialPage(child: Center(child: Text(RoutesEnum.DECK_LIST.name)));
          }
        )
      ]
    )
  ],
);