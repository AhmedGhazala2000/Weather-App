import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/utils/responsive_font_size.dart';
import 'package:weather_app/widgets/get_color_func.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    double buildResponsiveFontSize(double size) =>
        getResponsiveFontSize(context, fontSize: size);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getThemeColor(weatherCondition: weatherModel.weatherCondition),
            getThemeColor(
                weatherCondition: weatherModel.weatherCondition)[300]!,
            getThemeColor(
                weatherCondition: weatherModel.weatherCondition)[100]!,
          ],
        ),
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .03,
          vertical: MediaQuery.sizeOf(context).height * .25,
        ),
        children: [
          Text(
            '${weatherModel.cityName}, ${weatherModel.countryName}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: buildResponsiveFontSize(32),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: buildResponsiveFontSize(24),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                weatherModel.image.contains('https:')
                    ? weatherModel.image
                    : 'https:${weatherModel.image}',
              ),
              Text(
                weatherModel.currentTemp.round().toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: buildResponsiveFontSize(32),
                ),
              ),
              Column(
                children: [
                  Text(
                    'MaxTemp: ${weatherModel.maxTemp.round()}',
                    style: TextStyle(
                      fontSize: buildResponsiveFontSize(16),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'MinTemp: ${weatherModel.minTemp.round()}',
                    style: TextStyle(
                      fontSize: buildResponsiveFontSize(16),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            weatherModel.weatherCondition,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: buildResponsiveFontSize(32),
            ),
          ),
        ],
      ),
    );
  }
}
