import "package:flutter/material.dart";

import "../../../../Core/AppFonts.dart";

class CityDetailsColumn extends StatelessWidget {
  const CityDetailsColumn(
      {super.key,
      required this.num,
      required this.desc,
      required this.imageUrl});

  final String num;
  final String desc;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl, scale: 0.85),
        const SizedBox(height: 10),
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
