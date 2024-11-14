import 'package:flutter/material.dart';

import 'package:test_app/routes/routes.dart';

final globalScaffoldKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  runApp(
    MaterialApp.router(
      scaffoldMessengerKey: globalScaffoldKey,
      title: 'Test router app',
      routerConfig: appRoutes,
      localizationsDelegates: const [],
    ),
  );
}
