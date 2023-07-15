import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "../../../../Core/AppFonts.dart";

class StatBox extends StatelessWidget {
  const StatBox({super.key, required this.title, required this.num});

  final String title;
  final double num;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: kBorderRad15,
        color: AppColors.blueColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title, style: AppFonts.statStyle),
          Text("$num°"),
        ],
      ),
    );
  }
}
