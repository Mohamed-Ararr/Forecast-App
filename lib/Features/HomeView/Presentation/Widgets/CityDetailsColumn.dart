import "package:flutter/material.dart";

import "../../../../Core/AppFonts.dart";

class CityDetailsColumn extends StatelessWidget {
  const CityDetailsColumn({super.key, required this.num, required this.desc});

  final String num;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://cdn.weatherapi.com/weather/64x64/day/116.png",
          width: 40,
        ),
        const SizedBox(height: 5),
        Text(
          num,
          style: AppFonts.cityNumbersDetailStyle,
        ),
        const SizedBox(height: 5),
        Text(
          desc,
          style: AppFonts.cityDetailStyle,
        ),
      ],
    );
  }
}
