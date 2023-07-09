// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/Core/Failure.dart';
import 'package:weather_app/Data/HomeRepo/HomeRepo.dart';
import 'package:weather_app/Data/Services/ApiService.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, Map<String, dynamic>>> fetchCity(
      String cityName) async {
    try {
      Map<String, dynamic> data = await apiService.get(endPoint: "setif");
      debugPrint("$data");
      return Right(data);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
