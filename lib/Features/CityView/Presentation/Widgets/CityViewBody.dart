import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:go_router/go_router.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/CityRowDetail.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/ForecastColumnTenDays.dart";
import "package:weather_app/Features/CityView/Presentation/Widgets/HorizontalTempContainer.dart";

import "../../../../Core/AppFonts.dart";
import "../../../HomeView/Presentation/Widgets/CityDetailsBox.dart";

class CityViewBody extends StatelessWidget {
  const CityViewBody({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          forecastModel.city ?? "Unavailable",
          style: AppFonts.cityFontStyle,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () => GoRouter.of(context).pop(),
          child: const Icon(FontAwesomeIcons.arrowLeft),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: Column(
              children: [
                const SizedBox(height: 10),
                HorizontalTempContainer(
                  temp: forecastModel.temp!,
                  condition: forecastModel.textCondition!,
                  imageUrl: forecastModel.imageCondition!,
                ),
                const SizedBox(height: 25),
                CityDetailsBox(forecastModel: forecastModel),
                const SizedBox(height: 25),
                ForecastColumnTenDays(forecastModel: forecastModel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
