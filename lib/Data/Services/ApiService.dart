import 'dart:io';

import 'package:dio/dio.dart';

class ApiService {
  final String _apiKey = "3ca15d1ff34c44b2983141929230207";
  final String _baseUrl = "http://api.weatherapi.com/v1/forecast.json?";
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get(String? endPoint) async {
    var response = await dio
        .get("${_baseUrl}key=$_apiKey&q=$endPoint&days=7&aqi=no&alerts=no");
    return response.data;
  }
}
