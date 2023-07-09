import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/Data/HomeRepo/HomeRepoImpl.dart';

import '../Data/Services/ApiService.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  locator.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      locator.get<ApiService>(),
    ),
  );
}
