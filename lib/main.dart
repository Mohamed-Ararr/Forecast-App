import "package:flutter/material.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Core/AppRouter.dart";

import "Core/serviceLocator.dart";

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
    return MaterialApp.router(
      routerConfig: AppRouter.routes,
      theme: ThemeData(
        fontFamily: "Chakra Petch",
        brightness: Brightness.dark,
        canvasColor: AppColors.mainColor,
      ),
    );
  }
}
