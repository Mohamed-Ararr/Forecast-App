import "package:flutter/material.dart";

import "TodayForecastBox.dart";

class TodayForecastListview extends StatelessWidget {
  const TodayForecastListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) => TodayForecastBox(index: index),
      ),
    );
  }
}
