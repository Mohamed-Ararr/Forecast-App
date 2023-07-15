import "package:flutter/material.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";

import "../../../../ConstantValues.dart";
import "StatBox.dart";

class StatsGridview extends StatelessWidget {
  const StatsGridview({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        double num = 0.0;
        switch (kStatList[index]) {
          case "Max temp":
            num = forecastModel.maxTemp!;
            break;
          case "Min temp":
            num = forecastModel.minTemp!;
            break;
          case "Avg temp":
            num = forecastModel.avgTemp!;
            break;
          case "Max wind":
            num = forecastModel.maxWind!;
            break;
          case "Avg hum":
            num = forecastModel.avgHum!;
            break;
        }
        return StatBox(
          title: kStatList[index],
          num: num,
        );
      },
    );
  }
}
