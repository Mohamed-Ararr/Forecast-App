part of 'fetch_city_forecast_cubit.dart';

@immutable
abstract class FetchCityForecastState {}

class FetchCityForecastInitial extends FetchCityForecastState {}

class FetchCityForecastLoading extends FetchCityForecastState {}

class FetchCityForecastSuccess extends FetchCityForecastState {
  final ForecastModel forecastModel;

  FetchCityForecastSuccess(this.forecastModel);
}

class FetchCityForecastFailure extends FetchCityForecastState {
  final String errorMsg;

  FetchCityForecastFailure(this.errorMsg);
}
