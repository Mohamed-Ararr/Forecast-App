import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsBox.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityTempContainer.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/FloatingButton.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/StatsGridview.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecast.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecastListview.dart";

import "../../../../Data/Bloc Manager/FetchCityCubit/fetch_city_forecast_cubit.dart";
import "AstroBox.dart";
import "CityContainer.dart";
import "LoadingProgress.dart";

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButton(),
      body: SafeArea(
        child: BlocBuilder<FetchCityForecastCubit, FetchCityForecastState>(
          builder: (context, state) {
            if (state is FetchCityForecastSuccess) {
              return SingleChildScrollView(
                child: Padding(
                  padding: kPaddingLR15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      CityContainer(forecastModel: state.forecastModel),
                      const SizedBox(height: 15),
                      CityTempContainer(forecastModel: state.forecastModel),
                      const SizedBox(height: 25),
                      CityDetailsBox(forecastModel: state.forecastModel),
                      const SizedBox(height: 25),
                      const TodayForecast(title: "Today"),
                      const SizedBox(height: 15),
                      TodayForecastListview(forecastModel: state.forecastModel),
                      const SizedBox(height: 25),
                      const TodayForecast(title: "Stats"),
                      const SizedBox(height: 15),
                      StatsGridview(forecastModel: state.forecastModel),
                      const SizedBox(height: 25),
                      const TodayForecast(title: "Astro"),
                      const SizedBox(height: 15),
                      AstroBox(
                        sunriseTime: state.forecastModel.sunrise!,
                        sunsetTime: state.forecastModel.sunset!,
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              );
            } else if (state is FetchCityForecastFailure) {
              return Center(child: Text(state.errorMsg));
            } else {
              return const LoadingProgress();
            }
          },
        ),
      ),
    );
  }
}
