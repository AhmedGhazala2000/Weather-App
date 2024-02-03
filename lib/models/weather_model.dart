class WeatherModel {
  final String cityName;
  final String countryName;
  final DateTime date;
  final String image;
  final num currentTemp;
  final num maxTemp;
  final num minTemp;
  final String weatherCondition;

  WeatherModel(
      {required this.cityName,
      required this.countryName,
      required this.date,
      required this.image,
      required this.currentTemp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      countryName: json['location']['country'],
      date: DateTime.parse(json['current']['last_updated']),
      image: json['current']['condition']['icon'],
      currentTemp: json['current']['temp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weatherCondition: json['current']['condition']['text'],
    );
  }
}
