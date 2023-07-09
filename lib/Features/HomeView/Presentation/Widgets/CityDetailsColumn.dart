import "package:flutter/material.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/DisplayForecastImage.dart";

import "../../../../Core/AppFonts.dart";

class CityDetailsColumn extends StatelessWidget {
  const CityDetailsColumn({super.key, required this.num, required this.desc});

  final String num;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DisplayForecastImage(
            imageUrl: "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
        const SizedBox(height: 5),
        Text(
          num,
          style: AppFonts.cityNumbersDetailStyle,
        ),
        const SizedBox(height: 10),
        Text(
          desc,
          style: AppFonts.cityDetailStyle,
        ),
      ],
    );
  }
}
