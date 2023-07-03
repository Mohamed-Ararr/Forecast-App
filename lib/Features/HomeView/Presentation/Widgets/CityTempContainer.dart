import "package:flutter/material.dart";

import "../../../../Core/AppFonts.dart";

class CityTempContainer extends StatelessWidget {
  const CityTempContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // width: MediaQuery.of(context).size.width * 0.9,
        child: ListTile(
          title: Text(
            "18°",
            style: AppFonts.cityTempStyle,
          ),
          subtitle: const Text("Thunderstorm"),
          trailing: Image.network(
              "https://cdn.weatherapi.com/weather/64x64/day/116.png"),
        ),
      ),
    );
  }
}
