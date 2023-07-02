import 'package:go_router/go_router.dart';
import 'package:weather_app/Features/SplashView/Presentation/SplashView.dart';

class AppRouter {
  static String splashView = "/";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
