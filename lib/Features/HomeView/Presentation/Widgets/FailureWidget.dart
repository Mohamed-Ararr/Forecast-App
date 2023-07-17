import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:weather_app/Core/AppColors.dart";

class FailureWidget extends StatelessWidget {
  const FailureWidget({super.key, required this.errorMsg});

  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.screwdriverWrench,
            size: 50,
            color: AppColors.greyColor,
          ),
          const SizedBox(height: 15),
          Text(errorMsg),
        ],
      ),
    );
  }
}
