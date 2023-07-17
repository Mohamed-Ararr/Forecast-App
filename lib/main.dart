import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Core/AppRouter.dart";
import "package:weather_app/Data/Bloc%20Manager/FetchCityCubit/fetch_city_forecast_cubit.dart";

import "Core/serviceLocator.dart";
import "Data/HomeRepo/HomeRepoImpl.dart";

void main() {
  setupServiceLocator();
  runApp(
    const ForecastApp(),
  );
}

class ForecastApp extends StatelessWidget {
  const ForecastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FetchCityForecastCubit>(
      create: (context) => FetchCityForecastCubit(locator.get<HomeRepoImpl>()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.routes,
        theme: ThemeData(
          fontFamily: "Chakra Petch",
          brightness: Brightness.dark,
          canvasColor: AppColors.mainColor,
        ),
      ),
    );
  }
}
