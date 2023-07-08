import "package:flutter/material.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Core/AppFonts.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsBox.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsColumn.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityTempContainer.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecast.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecastBox.dart";

import "CityContainer.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CityContainer(),
                const SizedBox(height: 15),
                const CityTempContainer(),
                const SizedBox(height: 25),
                const CityDetailsBox(),
                const SizedBox(height: 25),
                const TodayForecast(),
                const SizedBox(height: 15),
                SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context, index) =>
                        TodayForecastBox(index: index),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
