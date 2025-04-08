import 'dart:developer';

import 'package:cfv_database_and_deck_builder/router/logic/cubit.dart';
import 'package:cfv_database_and_deck_builder/router/main.dart';
import 'package:cfv_database_and_deck_builder/utilities/data/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  );
  
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => CardRepository(),
      child: BlocProvider<RouterCubit>(
        create: (context) => RouterCubit(),
        child: MaterialApp.router(
          title: 'Cardfight Vanguard Database and Deckbuilder',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}