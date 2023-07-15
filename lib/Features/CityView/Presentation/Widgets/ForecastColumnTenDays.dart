import "package:flutter/material.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";

import "CityRowDetail.dart";

class ForecastColumnTenDays extends StatelessWidget {
  const ForecastColumnTenDays({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CityRowDetail(
          day: forecastModel.days![0]["date"],
          minTemp: forecastModel.days![0]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![0]["day"]["mintemp_c"],
          imageUrl: forecastModel.days![0]["day"]["condition"]["icon"],
        ),
        const SizedBox(height: 5),
        CityRowDetail(
          day: forecastModel.days![1]["date"],
          minTemp: forecastModel.days![1]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![1]["day"]["mintemp_c"],
          imageUrl: forecastModel.days![1]["day"]["condition"]["icon"],
        ),
        const SizedBox(height: 5),
        CityRowDetail(
          day: forecastModel.days![2]["date"],
          minTemp: forecastModel.days![2]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![2]["day"]["mintemp_c"],
          imageUrl: forecastModel.days![2]["day"]["condition"]["icon"],
        ),
        const SizedBox(height: 5),
        CityRowDetail(
          day: forecastModel.days![3]["date"],
          minTemp: forecastModel.days![3]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![3]["day"]["mintemp_c"],
          imageUrl: forecastModel.days![3]["day"]["condition"]["icon"],
        ),
        const SizedBox(height: 5),
        CityRowDetail(
          day: forecastModel.days![4]["date"],
          minTemp: forecastModel.days![4]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![4]["day"]["mintemp_c"],
          imageUrl: forecastModel.days![4]["day"]["condition"]["icon"],
        ),
        const SizedBox(height: 5),
        CityRowDetail(
          day: forecastModel.days![5]["date"],
          minTemp: forecastModel.days![5]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![5]["day"]["mintemp_c"],
          imageUrl: forecastModel.days![5]["day"]["condition"]["icon"],
        ),
        const SizedBox(height: 5),
        CityRowDetail(
          day: forecastModel.days![6]["date"],
          minTemp: forecastModel.days![6]["day"]["mintemp_c"],
          maxTemp: forecastModel.days![6]["day"]["mintemp_c"],
          imageUrl: forecastModel.days![6]["day"]["condition"]["icon"],
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
