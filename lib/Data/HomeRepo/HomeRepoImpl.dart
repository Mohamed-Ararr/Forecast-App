// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import "package:geolocator/geolocator.dart";
import "package:geocoding/geocoding.dart";

import 'package:weather_app/Core/Failure.dart';
import 'package:weather_app/Data/HomeRepo/HomeRepo.dart';
import 'package:weather_app/Data/Services/ApiService.dart';

import '../Models/ForecastModel/ForecastModel.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, ForecastModel>> fetchCity(String cityName) async {
    try {
      Map<String, dynamic> data = await apiService.get(cityName);
      ForecastModel forecastModel = ForecastModel(
        city: data["location"]["name"],
        country: data["location"]["country"],
        temp: data["current"]["temp_c"],
        textCondition: data["current"]["condition"]["text"],
        imageCondition: data["current"]["condition"]["icon"],
        windSpeed: data["current"]["wind_kph"],
        humidity: data["current"]["humidity"],
        rain: data["forecast"]["forecastday"][0]["day"]["daily_chance_of_rain"],
        hourly: data["forecast"]["forecastday"][0]["hour"],
        maxTemp: data["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        minTemp: data["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        avgTemp: data["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
        maxWind: data["forecast"]["forecastday"][0]["day"]["maxwind_kph"],
        avgHum: data["forecast"]["forecastday"][0]["day"]["avghumidity"],
        sunrise: data["forecast"]["forecastday"][0]["astro"]["sunrise"],
        sunset: data["forecast"]["forecastday"][0]["astro"]["sunset"],
        days: data["forecast"]["forecastday"],
      );
      return Right(forecastModel);
    } catch (e) {
      if (e is DioException) {
        debugPrint("$e");
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
