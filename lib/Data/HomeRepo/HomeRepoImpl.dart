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
      String city = await _getLocation();
      Map<String, dynamic> data = await apiService.get(endPoint: city);
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
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}

Future<String> _getLocation() async {
  bool serviceEnabled;
  LocationPermission permission;
  String getCity = "";

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    debugPrint('Location services are disabled.');
    return "";
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission != LocationPermission.whileInUse &&
        permission != LocationPermission.always) {
      debugPrint(
          'Location permissions are denied (actual value: $permission).');
      return "";
    }
  }

  if (permission == LocationPermission.deniedForever) {
    debugPrint(
        'Location permissions are permanently denied, we cannot request permissions.');
    return "";
  }

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);

  try {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    if (placemarks.isNotEmpty) {
      String city = placemarks[0].locality ?? "";
      debugPrint('City: $city');
      getCity = city;
    }
  } catch (e) {
    debugPrint('Error: $e');
    return "";
  }
  return getCity;
}
