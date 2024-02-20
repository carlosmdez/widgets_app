import 'package:go_router/go_router.dart';
import 'package:widgets_app/screens/screens.dart';

// The route configuration.
final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'buttons',
          builder: (context, GoRouterState state) {
            return const ButtonsScreen();
          },
        ),
        GoRoute(
          path: 'cards',
          builder: (context, GoRouterState state) {
            return const CardsScreen();
          },
        ),
      ],
    ),
  ],
);
