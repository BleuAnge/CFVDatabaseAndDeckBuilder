import 'package:cfv_database_and_deck_builder/router/logic/cubit.dart';
import 'package:cfv_database_and_deck_builder/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RouterController extends StatefulWidget {
  final Widget child;

  const RouterController({
    required this.child,
    super.key
  });

  @override
  State<RouterController> createState() => _RouterControllerState();
}

class _RouterControllerState extends State<RouterController> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RouterCubit, RouterObject>(
      builder: (context, state) {
        return Scaffold(
          body: widget.child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentRoute.index,
            onTap: (value) {
              context.read<RouterCubit>().changeRoute(RoutesEnum.values[value]);
              context.goNamed(
                RoutesEnum.values[value].name
              );
            },
            selectedItemColor: Colors.blue,
            items: RoutesEnum.values.map(
              (route) {
                return BottomNavigationBarItem(
                  icon: Icon( route.icon ),
                  label: route.name
                );
              }
            ).toList()
          ),
        );
      }
    );
  }
}