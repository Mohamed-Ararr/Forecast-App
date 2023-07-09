part of 'fetch_city_forecast_cubit.dart';

@immutable
abstract class FetchCityForecastState {}

class FetchCityForecastInitial extends FetchCityForecastState {}

class FetchCityForecastLoading extends FetchCityForecastState {}

class FetchCityForecastSuccess extends FetchCityForecastState {
  final Map<String, dynamic> result;

  FetchCityForecastSuccess(this.result);
}

class FetchCityForecastFailure extends FetchCityForecastState {
  final String errorMsg;

  FetchCityForecastFailure(this.errorMsg);
}
