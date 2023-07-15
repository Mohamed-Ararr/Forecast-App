import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/Core/AppRouter.dart';
import 'package:weather_app/Data/Models/ForecastModel/ForecastModel.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import '../../../../Core/AppFonts.dart';

class CityContainer extends StatelessWidget {
  const CityContainer({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.95,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          forecastModel.city ?? "Unavailable",
          style: AppFonts.cityFontStyle,
        ),
        subtitle: Row(
          children: [
            const Icon(FontAwesomeIcons.locationArrow, size: 18),
            const SizedBox(width: 5),
            Text(forecastModel.country ?? "Unavailable",
                style: const TextStyle(fontSize: 16)),
          ],
        ),
        trailing: IconButton(
            onPressed: () => GoRouter.of(context).push(
                  AppRouter.cityView,
                  extra: forecastModel,
                ),
            icon: const Icon(
              FontAwesomeIcons.anglesRight,
              size: 25,
            )),
      ),
    );
  }
}
