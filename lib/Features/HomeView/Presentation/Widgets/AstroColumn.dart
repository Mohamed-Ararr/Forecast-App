import "package:flutter/material.dart";

import "../../../../Core/AppFonts.dart";

class AstroColumn extends StatelessWidget {
  const AstroColumn(
      {super.key,
      required this.image,
      required this.time,
      required this.title});

  final String image;
  final String time;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 40,
        ),
        const SizedBox(height: 8),
        Text(
          time,
          style: AppFonts.cityNumbersDetailStyle,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: AppFonts.cityDetailStyle,
        ),
      ],
    );
  }
}
