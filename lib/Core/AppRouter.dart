import 'package:go_router/go_router.dart';
import 'package:weather_app/Features/HomeView/Presentation/HomeView.dart';
import 'package:weather_app/Features/SplashView/Presentation/SplashView.dart';

import '../Features/CityView/Presentation/CityView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String cityView = "/cityView";

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
      GoRoute(
        path: cityView,
        builder: (context, state) => const CityView(),
      ),
    ],
  );
}
