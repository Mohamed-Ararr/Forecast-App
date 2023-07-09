import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
import "package:weather_app/Core/AppFonts.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/DisplayForecastImage.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";

class CityRowDetail extends StatelessWidget {
  const CityRowDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today",
          style: AppFonts.font15,
        ),
        Text(
          "13°",
          style: AppFonts.font15,
        ),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: kBorderRad10,
          ),
        ),
        Text(
          "13°",
          style: AppFonts.font15,
        ),
        const DisplayForecastImage(
          imageUrl: "https://cdn.weatherapi.com/weather/64x64/day/113.png",
        ),
      ],
    );
  }
}
