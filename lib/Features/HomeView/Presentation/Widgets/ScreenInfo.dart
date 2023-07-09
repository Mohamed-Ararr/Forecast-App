import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:weather_app/Data/Bloc%20Manager/FetchCityCubit/fetch_city_forecast_cubit.dart";

import "AstroBox.dart";
import "CityContainer.dart";
import "CityDetailsBox.dart";
import "CityTempContainer.dart";
import "StatsGridview.dart";
import "TodayForecast.dart";
import "TodayForecastListview.dart";

class ScreenInfo extends StatelessWidget {
  const ScreenInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCityForecastCubit, FetchCityForecastState>(
      builder: (context, state) {
        print(state);
        if (state is FetchCityForecastSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CityContainer(),
              SizedBox(height: 15),
              CityTempContainer(),
              SizedBox(height: 25),
              CityDetailsBox(),
              SizedBox(height: 25),
              TodayForecast(title: "Today"),
              SizedBox(height: 15),
              TodayForecastListview(),
              SizedBox(height: 25),
              TodayForecast(title: "Stats"),
              SizedBox(height: 15),
              StatsGridview(),
              SizedBox(height: 25),
              TodayForecast(title: "Astro"),
              SizedBox(height: 15),
              AstroBox(),
              SizedBox(height: 15),
            ],
          );
        } else if (state is FetchCityForecastFailure) {
          return Center(child: Text(state.errorMsg));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
