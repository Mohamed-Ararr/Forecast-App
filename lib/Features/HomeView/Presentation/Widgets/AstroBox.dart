import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "AstroColumn.dart";

class AstroBox extends StatelessWidget {
  const AstroBox(
      {super.key, required this.sunriseTime, required this.sunsetTime});

  final String sunriseTime;
  final String sunsetTime;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: kPaddingAll10,
        decoration: BoxDecoration(
          borderRadius: kBorderRad15,
          color: AppColors.blueColor,
        ),
        // width: MediaQuery.of(context).size.width * .85,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AstroColumn(image: sunrise, time: sunriseTime, title: "Sunrise"),
            AstroColumn(image: sunset, time: sunsetTime, title: "Sunset"),
          ],
        ),
      ),
    );
  }
}
