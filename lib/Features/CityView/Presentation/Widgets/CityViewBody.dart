import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/CustomAppBar.dart";

import "../../../../Core/AppFonts.dart";

class CityViewBody extends StatelessWidget {
  const CityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const CustomAppBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
