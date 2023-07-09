import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:weather_app/ConstantValues.dart";
import "package:weather_app/Core/AppColors.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityDetailsBox.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/CityTempContainer.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/StatsGridview.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecast.dart";
import "package:weather_app/Features/HomeView/Presentation/Widgets/TodayForecastListview.dart";

import "../../../../Data/Bloc Manager/FetchCityCubit/fetch_city_forecast_cubit.dart";
import "AstroBox.dart";
import "CityContainer.dart";
import "LoadingProgress.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FetchCityForecastCubit, FetchCityForecastState>(
          builder: (context, state) {
            if (state is FetchCityForecastSuccess) {
              return SingleChildScrollView(
                child: Padding(
                  padding: kPaddingLR15,
                  child: Column(
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
