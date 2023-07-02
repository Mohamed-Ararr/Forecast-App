import "package:flutter/material.dart";
import "package:weather_app/Core/AppRouter.dart";

main() => {runApp(const ForecastApp())};

class ForecastApp extends StatelessWidget {
  const ForecastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.routes,
    );
  }
}
