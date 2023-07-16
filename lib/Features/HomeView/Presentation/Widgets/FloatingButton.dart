import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:go_router/go_router.dart";
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
        GoRouter.of(context).pop();
      },
      child: const Icon(FontAwesomeIcons.rightFromBracket),
    );
  }
}
