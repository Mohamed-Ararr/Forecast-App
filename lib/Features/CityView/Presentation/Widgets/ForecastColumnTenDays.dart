import "package:flutter/material.dart";

import "CityRowDetail.dart";

class ForecastColumnTenDays extends StatelessWidget {
  const ForecastColumnTenDays({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
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
    );
  }
}
