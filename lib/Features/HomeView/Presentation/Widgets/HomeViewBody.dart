import "package:flutter/material.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Core/AppFonts.dart";

import "CityContainer.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CityContainer(),
              const SizedBox(height: 15),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
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
            ],
          ),
        ),
      ),
    );
  }
}
