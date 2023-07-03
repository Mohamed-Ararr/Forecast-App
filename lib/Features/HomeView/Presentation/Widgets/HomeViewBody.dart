import "package:flutter/material.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Core/AppFonts.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityTempContainer.dart";

import "CityContainer.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CityContainer(),
              const SizedBox(height: 15),
              const CityTempContainer(),
              Container(
                  // width: ,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
