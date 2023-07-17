import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:weather_app/Core/AppRouter.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppFonts.dart";

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),
        () => GoRouter.of(context).pushReplacement(AppRouter.searchView));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                kAppLogo,
                scale: 2.5,
              ),
              Text(
                "ForecastNow",
                style: AppFonts.appTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
