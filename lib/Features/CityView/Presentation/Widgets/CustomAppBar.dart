import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "../../../../ConstantValues.dart";
import "../../../../Core/AppColors.dart";
import "../../../../Core/AppFonts.dart";

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => GoRouter.of(context).pop(),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColors.blueColor,
              borderRadius: kBorderRad10,
            ),
            child: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        Text(
          "Stuttgart",
          style: AppFonts.cityFontStyle,
        ),
        const SizedBox(),
      ],
    );
  }
}
