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
        GoRoute(
          path: 'animated',
          builder: (context, GoRouterState state) {
            return const AnimatedScreen();
          },
        ),
        GoRoute(
          path: 'app-tutorial',
          builder: (context, GoRouterState state) {
            return const AppTutorialScreen();
          },
        ),
        GoRoute(
          path: 'infinite-scroll',
          builder: (context, GoRouterState state) {
            return const InfiniteScrollScreen();
          },
        ),
        GoRoute(
          path: 'progress',
          builder: (context, GoRouterState state) {
            return const ProgressScreen();
          },
        ),
        GoRoute(
          path: 'snackbar',
          builder: (context, GoRouterState state) {
            return const SnackbarScreen();
          },
        ),
        GoRoute(
          path: 'ui-controls',
          builder: (context, GoRouterState state) {
            return const UIControlsScreen();
          },
        ),
        GoRoute(
          path: 'counter',
          builder: (context, GoRouterState state) {
            return const CounterScreen();
          },
        ),
      ],
    ),
  ],
);
