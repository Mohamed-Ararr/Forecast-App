import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CustomBottomSheet.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CustomTextField.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.whiteColor,
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: kBorderRad15,
          ),
          context: context,
          builder: (context) {
            return const CustomBottomSheet();
          },
        );
      },
      child: const Icon(FontAwesomeIcons.magnifyingGlass),
    );
  }
}
