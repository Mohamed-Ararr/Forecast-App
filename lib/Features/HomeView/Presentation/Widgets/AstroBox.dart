import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "AstroColumn.dart";

class AstroBox extends StatelessWidget {
  const AstroBox({super.key});

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
          children: const [
            AstroColumn(image: sunrise, time: "6:10 AM", title: "Sunrise"),
            AstroColumn(image: sunset, time: "6:10 PM", title: "Sunset"),
          ],
        ),
      ),
    );
  }
}
