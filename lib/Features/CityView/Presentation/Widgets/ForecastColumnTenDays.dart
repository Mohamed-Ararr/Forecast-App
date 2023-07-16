import "package:flutter/material.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";

import "CityRowDetail.dart";

class ForecastColumnTenDays extends StatelessWidget {
  const ForecastColumnTenDays({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        forecastModel.days!.length,
        (index) => CityRowDetail(
          day: forecastModel.days![index]["date"],
          minTemp: forecastModel.days![index]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![index]["day"]["maxtemp_c"],
          imageUrl: forecastModel.days![index]["day"]["condition"]["icon"],
        ),
      ),
    );
  }
}
