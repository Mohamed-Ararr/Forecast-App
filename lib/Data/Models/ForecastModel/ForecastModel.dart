class ForecastModel {
  final String? city;
  final String? country;
  final double? temp;
  final String? textCondition;
  final String? imageCondition;
  final double? windSpeed;
  final int? humidity;
  final int? rain;
  final List<dynamic>? hourly;
  final double? maxTemp;
  final double? minTemp;
  final double? avgTemp;
  final double? maxWind;
  final double? avgHum;
  final String? sunrise;
  final String? sunset;
  final List<dynamic>? days;

  ForecastModel({
    this.city,
    this.country,
    this.temp,
    this.textCondition,
    this.imageCondition,
    this.windSpeed,
    this.humidity,
    this.rain,
    this.hourly,
    this.maxTemp,
    this.minTemp,
    this.avgTemp,
    this.maxWind,
    this.avgHum,
    this.sunrise,
    this.sunset,
    this.days,
  });
}
