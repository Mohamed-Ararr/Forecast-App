import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";

import "../../../../ConstantValues.dart";
import "StatBox.dart";

class StatsGridview extends StatelessWidget {
  const StatsGridview({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        String num = "";
        IconData icon = FontAwesomeIcons.temperatureHigh;
        Color color = Colors.white;

        switch (kStatList[index]) {
          case "Max temp":
            num = "${forecastModel.maxTemp!}°";
            icon;
            color = const Color.fromARGB(255, 250, 87, 75);
            break;
          case "Min temp":
            num = "${forecastModel.minTemp!}°";
            icon = FontAwesomeIcons.temperatureLow;
            color = Colors.blue;
            break;
          case "Avg temp":
            num = "${forecastModel.avgTemp!}°";
            icon = FontAwesomeIcons.temperatureEmpty;
            break;
          case "Max wind":
            num = "${forecastModel.maxWind!}m/h";
            icon = FontAwesomeIcons.wind;
            color = const Color.fromARGB(255, 106, 179, 248);
            break;
          case "Avg hum":
            num = "${forecastModel.avgHum!}%";
            icon = FontAwesomeIcons.droplet;
            color = const Color.fromARGB(255, 20, 134, 241);
            break;
        }
        return StatBox(
          title: kStatList[index],
          num: num,
          icon: icon,
          color: color,
        );
      },
    );
  }
}
