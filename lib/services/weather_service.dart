import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherServices {
  WeatherServices({required this.dio});

  final Dio dio;
  final String apiKey = 'e7d5afc293c14e928ed170144240501';
  final String baseUrl = 'https://api.weatherapi.com/v1';

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'Oops there was an error, check the connection and try again.';
      throw Exception(errMessage);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
