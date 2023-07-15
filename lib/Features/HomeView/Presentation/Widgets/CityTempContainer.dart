import "package:flutter/material.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/DisplayForecastImage.dart";

import "../../../../Core/AppFonts.dart";

class CityTempContainer extends StatelessWidget {
  const CityTempContainer({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // width: MediaQuery.of(context).size.width * 0.9,
        child: ListTile(
          title: Text(
            "${forecastModel.temp}°",
            style: AppFonts.cityTempStyle,
          ),
          subtitle: Text(forecastModel.textCondition ?? "Unavailable"),
          trailing: DisplayForecastImage(
              imageUrl: "https:${forecastModel.imageCondition!}"),
        ),
      ),
    );
  }
}
