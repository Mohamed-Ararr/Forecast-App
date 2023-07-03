import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "CityDetailsColumn.dart";

class CityDetailsBox extends StatelessWidget {
  const CityDetailsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingAll10,
      decoration: BoxDecoration(
        borderRadius: kBorderRad15,
        color: AppColors.blueColor,
      ),
      width: MediaQuery.of(context).size.width * .88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CityDetailsColumn(num: "10 m/s", desc: "Wind"),
          CityDetailsColumn(num: "98%", desc: "Humidity"),
          CityDetailsColumn(num: "100%", desc: "Rain"),
        ],
      ),
    );
  }
}
