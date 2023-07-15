import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
import "package:intl/intl.dart";
import "package:weather_app/Core/AppFonts.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/DisplayForecastImage.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";

class CityRowDetail extends StatelessWidget {
  const CityRowDetail(
      {super.key,
      required this.day,
      required this.minTemp,
      required this.maxTemp,
      required this.imageUrl});

  final String day;
  final double minTemp;
  final double maxTemp;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            DateFormat("EEEE").format(DateTime.parse(day)),
            style: AppFonts.font15,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "$minTemp°",
            style: AppFonts.font15,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: Container(
            height: 3,
            decoration: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: kBorderRad10,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "$maxTemp°",
            style: AppFonts.font15,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: DisplayForecastImage(
              imageUrl: "https:$imageUrl",
            ),
          ),
        ),
      ],
    );
  }
}
