import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/Core/serviceLocator.dart';
import 'package:weather_app/Data/Bloc%20Manager/FetchCityCubit/fetch_city_forecast_cubit.dart';
import 'package:weather_app/Data/Models/ForecastModel/ForecastModel.dart';
import 'package:weather_app/Features/HomeView/Presentation/HomeView.dart';
import 'package:weather_app/Features/SearchView/Presentation/SearchView.dart';
import 'package:weather_app/Features/SplashView/Presentation/SplashView.dart';

import '../Data/HomeRepo/HomeRepoImpl.dart';
import '../Features/CityView/Presentation/CityView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String cityView = "/cityView";
  static String searchView = "/searchView";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => BlocProvider(
          create: (context) => FetchCityForecastCubit(
            locator.get<HomeRepoImpl>(),
          )..fetchCity(state.extra as String),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: cityView,
        builder: (context, state) =>
            CityView(forecastModel: state.extra as ForecastModel),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
