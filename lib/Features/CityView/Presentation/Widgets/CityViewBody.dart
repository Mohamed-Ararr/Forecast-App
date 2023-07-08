import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/CityRowDetail.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/HorizontalTempContainer.dart";

import "../../../../Core/AppFonts.dart";
import "../../../HomeView/Presentation/Widgets/CityDetailsBox.dart";

class CityViewBody extends StatelessWidget {
  const CityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Stuttgart",
          style: AppFonts.cityFontStyle,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => GoRouter.of(context).pop(),
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const HorizontalTempContainer(),
                const SizedBox(height: 25),
                const CityDetailsBox(),
                const SizedBox(height: 25),
                Column(
                  children: [
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                    SizedBox(height: 5),
                    CityRowDetail(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
