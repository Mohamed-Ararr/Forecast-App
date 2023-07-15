import "package:flutter/material.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";

import "TodayForecastBox.dart";

class TodayForecastListview extends StatelessWidget {
  const TodayForecastListview({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: forecastModel.hourly!.length,
        itemBuilder: (context, index) => TodayForecastBox(
          hour: forecastModel.hourly![index]["time"].split(" ")[1],
          imageUrl: forecastModel.hourly![index]["condition"]["icon"],
          condition: forecastModel.hourly![index]["condition"]["text"],
          index: index,
        ),
      ),
    );
  }
}
