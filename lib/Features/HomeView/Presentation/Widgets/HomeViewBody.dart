import "package:flutter/material.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Core/AppFonts.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsColumn.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityTempContainer.dart";

import "CityContainer.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CityContainer(),
                const SizedBox(height: 15),
                const CityTempContainer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.blueColor,
                  ),
                  width: MediaQuery.of(context).size.width * .88,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CityDetailsColumn(num: "10 m/s", desc: "Wind"),
                      CityDetailsColumn(num: "98%", desc: "Humidity"),
                      CityDetailsColumn(num: "100%", desc: "Rain"),
                    ],
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
