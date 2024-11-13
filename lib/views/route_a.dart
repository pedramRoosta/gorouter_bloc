import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/bloc/app_bloc.dart';
import 'package:test_app/bloc/app_event.dart';
import 'package:test_app/bloc/app_state.dart';
import 'package:test_app/routes/routes.dart';

class RouteA extends StatelessWidget {
  const RouteA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route A'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<AppBloc>().add(AppEventAdd());
              },
              child: const Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(RoutesName.routeB.route);
              },
              child: const Text('go to route B'),
            ),
            BlocConsumer<AppBloc, AppState>(
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('i: ${state.i}'),
                  ),
                );
              },
              builder: (context, state) => Text('index is: ${state.i}'),
            ),
          ],
        ),
      ),
    );
  }
}
