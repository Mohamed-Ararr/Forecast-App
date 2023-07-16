import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "../../../../Core/AppFonts.dart";

class StatBox extends StatelessWidget {
  const StatBox(
      {super.key,
      required this.title,
      required this.num,
      required this.icon,
      this.color});

  final String title;
  final String num;
  final IconData icon;
  final Color? color;

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
          Icon(
            icon,
            color: color,
          ),
          Text(title, style: AppFonts.statStyle),
          Text(num),
        ],
      ),
    );
  }
}
