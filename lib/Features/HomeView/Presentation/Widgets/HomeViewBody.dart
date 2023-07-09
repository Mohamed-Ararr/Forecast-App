import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Data/Bloc%20Manager/FetchCityCubit/fetch_city_forecast_cubit.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsBox.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityTempContainer.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/StatsGridview.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecast.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecastListview.dart";

import "AstroBox.dart";
import "CityContainer.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: BlocConsumer<FetchCityForecastCubit, FetchCityForecastState>(
              listener: (context, state) {
                if (state is FetchCityForecastFailure) {
                  debugPrint(state.errorMsg);
                } else if (state is FetchCityForecastSuccess) {
                  debugPrint("${state.result}");
                } else {
                  debugPrint("loading");
                }
              },
              builder: (context, state) {
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
              },
            ),
          ),
        ),
      ),
    );
  }
}
