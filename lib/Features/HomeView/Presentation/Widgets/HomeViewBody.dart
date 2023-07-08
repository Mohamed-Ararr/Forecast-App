import "package:flutter/material.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Core/AppFonts.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/AstroColumn.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsBox.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsColumn.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityTempContainer.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/StatBox.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/StatsGridview.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecast.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecastBox.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecastListview.dart";

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
                const TodayForecast(title: "Today"),
                const SizedBox(height: 15),
                const TodayForecastListview(),
                const SizedBox(height: 25),
                const TodayForecast(title: "Stats"),
                const SizedBox(height: 15),
                const StatsGridview(),
                const SizedBox(height: 25),
                const TodayForecast(title: "Astro"),
                const SizedBox(height: 15),
                Center(
                  child: Container(
                    padding: kPaddingAll10,
                    decoration: BoxDecoration(
                      borderRadius: kBorderRad15,
                      color: AppColors.blueColor,
                    ),
                    // width: MediaQuery.of(context).size.width * .85,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        AstroColumn(
                            image: sunrise, time: "6:10 AM", title: "Sunrise"),
                        AstroColumn(
                            image: sunset, time: "6:10 PM", title: "Sunset"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
