import "package:flutter/material.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";

import "Widgets/CityViewBody.dart";

class CityView extends StatelessWidget {
  const CityView({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return CityViewBody(forecastModel: forecastModel);
  }
}
