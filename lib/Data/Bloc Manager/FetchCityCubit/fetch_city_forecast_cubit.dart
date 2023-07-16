// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/Core/Failure.dart';
import 'package:weather_app/Data/HomeRepo/HomeRepoImpl.dart';
import 'package:weather_app/Data/Models/ForecastModel/ForecastModel.dart';

part 'fetch_city_forecast_state.dart';

class FetchCityForecastCubit extends Cubit<FetchCityForecastState> {
  FetchCityForecastCubit(this.homeRepoImpl) : super(FetchCityForecastInitial());

  HomeRepoImpl homeRepoImpl;

  fetchCity(String cityName) async {
    emit(FetchCityForecastLoading());

    Either<Failure, ForecastModel> result =
        await homeRepoImpl.fetchCity(cityName);

    result.fold(
      (failure) => emit(FetchCityForecastFailure(failure.errorMsg)),
      (success) => emit(FetchCityForecastSuccess(success)),
    );
  }
}
