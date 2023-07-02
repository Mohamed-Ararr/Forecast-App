import 'package:go_router/go_router.dart';
import 'package:weather_app/Features/HomeView/Presentation/HomeView.dart';
import 'package:weather_app/Features/SplashView/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "/homeView";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
