import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "../../../../Core/AppFonts.dart";

class TodayForecast extends StatelessWidget {
  const TodayForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Today",
          style: AppFonts.todayStyle,
        ),
        const SizedBox(height: 5),
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: kBorderRad15,
          ),
        ),
      ],
    );
  }
}
