import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";

class TodayForecastBox extends StatelessWidget {
  const TodayForecastBox({super.key, required this.index});

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
      margin: index == 19 ? null : const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("$index:00 am"),
          Image.network(
            "https://cdn.weatherapi.com/weather/64x64/day/116.png",
            width: 40,
          ),
          const Text("Wind"),
        ],
      ),
    );
  }
}
