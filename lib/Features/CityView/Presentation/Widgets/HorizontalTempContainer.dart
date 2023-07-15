import "package:flutter/material.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/DisplayForecastImage.dart";

import "../../../../Core/AppColors.dart";
import "../../../../Core/AppFonts.dart";

class HorizontalTempContainer extends StatelessWidget {
  const HorizontalTempContainer(
      {super.key,
      required this.temp,
      required this.condition,
      required this.imageUrl});

  final double temp;
  final String condition;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$temp°",
          style: AppFonts.cityTempStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(condition,
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 13,
                  color: AppColors.greyColor,
                )),
            DisplayForecastImage(imageUrl: "https:$imageUrl"),
          ],
        ),
      ],
    );
  }
}
