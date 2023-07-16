import "package:flutter/material.dart";
import "package:weather_app/Core/AppFonts.dart";

import "../../../../ConstantValues.dart";

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 63, 187, 135),
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRad15,
        ),
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
      ),
      child: Text(
        "Search",
        style: AppFonts.statStyle,
      ),
    );
  }
}
