import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "../../../../Data/Models/ForecastModel/ForecastModel.dart";
import "CityDetailsColumn.dart";

class CityDetailsBox extends StatelessWidget {
  const CityDetailsBox({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: kPaddingAll10,
        decoration: BoxDecoration(
          borderRadius: kBorderRad15,
          color: AppColors.blueColor,
        ),
        // width: MediaQuery.of(context).size.width * .85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CityDetailsColumn(
                imageUrl: "Assets/Images/wind.png",
                num: "${forecastModel.windSpeed}m/s",
                desc: "Wind"),
            CityDetailsColumn(
                imageUrl: "Assets/Images/humidity.png",
                num: "${forecastModel.humidity}%",
                desc: "Humidity"),
            CityDetailsColumn(
                imageUrl: "Assets/Images/raining.png",
                num: "${forecastModel.rain}%",
                desc: "Rain"),
          ],
        ),
      ),
    );
  }
}
