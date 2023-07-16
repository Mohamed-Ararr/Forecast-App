import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errorMsg;

  Failure(this.errorMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMsg);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with API server!");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout with API server!");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout with API server!");

      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate with API server!");

      case DioExceptionType.badResponse:
        return ServerFailure("Bad response with API server!");

      case DioExceptionType.connectionError:
        return ServerFailure("Connection error with API server!");

      case DioExceptionType.cancel:
        return ServerFailure("Request to API server canceled");

      case DioExceptionType.unknown:
        debugPrint("$dioError");
        // if (dioError.message!.contains("SocketException")) {
        //   return ServerFailure("No internet connection");
        // }
        return ServerFailure("Unexpected error, Please try again!");
      default:
        return ServerFailure("Ops an error occured, Please try again");
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Request not found, Please try again!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, Please try later!");
    } else {
      return ServerFailure("Ops an error occured, Please try again");
    }
  }
}
