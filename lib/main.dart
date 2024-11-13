import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bloc/app_bloc.dart';
import 'package:test_app/routes/routes.dart';

final globalScaffoldKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(
    BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp.router(
        scaffoldMessengerKey: globalScaffoldKey,
        title: 'Test router app',
        routerConfig: appRoutes,
        localizationsDelegates: const [],
      ),
    ),
  );
}
