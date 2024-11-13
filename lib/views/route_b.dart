import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/bloc/app_bloc.dart';
import 'package:test_app/bloc/app_state.dart';
import 'package:test_app/routes/routes.dart';

class RouteB extends StatelessWidget {
  const RouteB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route B'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(RoutesName.routeA.route);
              },
              child: const Text('go to route A'),
            ),
          ],
        ),
      ),
    );
  }
}
