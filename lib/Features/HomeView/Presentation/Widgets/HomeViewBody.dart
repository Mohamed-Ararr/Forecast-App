import "package:flutter/material.dart";
import "package:weather_app/Core/AppFonts.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Stuttgart",
                  style: AppFonts.cityFontStyle,
                ),
                subtitle: const Text(
                  "12 September, Sunday",
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.info_outline_rounded,
                      size: 30,
                    )),
              ),
              ListTile(
                title: Text("18°"),
                subtitle: Text("Thunderstorm"),
                trailing: Image.network(
                  "https://cdn.weatherapi.com/weather/64x64/night/113.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
