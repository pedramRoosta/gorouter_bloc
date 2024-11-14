import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/bloc/app_bloc.dart';
import 'package:test_app/views/route_a.dart';
import 'package:test_app/views/route_b.dart';

final appRoutes = GoRouter(
  initialLocation: RoutesName.routeA.route,
  routes: [
    GoRoute(
      path: RoutesName.routeA.route,
      builder: (context, state) => BlocProvider(
        create: (context) => AppBloc(),
        child: const RouteA(),
      ),
    ),
    GoRoute(
      path: RoutesName.routeB.route,
      builder: (context, state) => const RouteB(),
    ),
  ],
);

enum RoutesName {
  routeA('/'),
  routeB('/b');

  final String route;
  const RoutesName(this.route);
}
