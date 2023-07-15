import "package:dartz/dartz.dart";
import "package:weather_app/Core/Failure.dart";
import "package:weather_app/Data/Models/ForecastModel/ForecastModel.dart";

abstract class HomeRepo {
  Future<Either<Failure, ForecastModel>> fetchCity(String cityName);
}
