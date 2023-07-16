import "package:flutter/material.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key, this.onPressed});

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blueColor,
        shape: RoundedRectangleBorder(
          borderRadius: kBorderRad15,
        ),
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
      ),
      child: const Text("Search"),
    );
  }
}
