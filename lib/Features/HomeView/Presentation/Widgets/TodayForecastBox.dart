import "package:flutter/material.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/DisplayForecastImage.dart";
import "package:weather_app/main.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";

class TodayForecastBox extends StatelessWidget {
  const TodayForecastBox({
    super.key,
    required this.hour,
    required this.imageUrl,
    required this.condition,
    required this.index,
  });

  final String hour;
  final String imageUrl;
  final String condition;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: kBorderRad15,
        color: AppColors.blueColor,
      ),
      padding: kPaddingAll10,
      width: 100,
      margin: index == 23 ? null : const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(hour),
          const SizedBox(height: 10),
          DisplayForecastImage(imageUrl: "https:$imageUrl"),
          const SizedBox(height: 10),
          Text(condition),
        ],
      ),
    );
  }
}
