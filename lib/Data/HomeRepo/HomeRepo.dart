import "package:dartz/dartz.dart";
import "package:weather_app/Core/Failure.dart";

abstract class HomeRepo {
  Future<Either<Failure, Map<String, dynamic>>> fetchCity();
}
