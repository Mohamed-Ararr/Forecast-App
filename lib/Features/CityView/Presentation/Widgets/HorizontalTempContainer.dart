import "package:flutter/material.dart";

import "../../../../Core/AppColors.dart";
import "../../../../Core/AppFonts.dart";

class HorizontalTempContainer extends StatelessWidget {
  const HorizontalTempContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "20°",
          style: AppFonts.cityTempStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Thunderstorm",
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 13,
                  color: AppColors.greyColor,
                )),
            Image.network(
              "https://cdn.weatherapi.com/weather/64x64/day/113.png",
              scale: 1.5,
            )
          ],
        ),
      ],
    );
  }
}