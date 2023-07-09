class ForecastModel {
  final String city;
  final String country;
  final double temp;
  final String textCondition;
  final String imageCondition;
  final double windSpeed;
  final double humidity;
  final double rain;
  final String time;
  final String hourlyImageCondition;
  final String hourlyTextCondition;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;
  final double maxWind;
  final double avgHum;
  final String sunrise;
  final String sunset;

  ForecastModel({
    required this.city,
    required this.country,
    required this.temp,
    required this.textCondition,
    required this.imageCondition,
    required this.windSpeed,
    required this.humidity,
    required this.rain,
    required this.time,
    required this.hourlyImageCondition,
    required this.hourlyTextCondition,
    required this.maxTemp,
    required this.minTemp,
    required this.avgTemp,
    required this.maxWind,
    required this.avgHum,
    required this.sunrise,
    required this.sunset,
  });
}
