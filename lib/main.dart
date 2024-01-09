import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetWeatherCubit>(
      create: (context) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: getThemeColor(
                BlocProvider.of<GetWeatherCubit>(context)
                    .weatherModel
                    ?.weatherCondition,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: const HomeView(),
          );
        },
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition.toLowerCase()) {
    case 'sunny':
      return Colors.orange;
    case 'partly cloudy':
      return Colors.yellow;
    case 'cloudy':
    case 'overcast':
    case 'fog':
    case 'freezing fog':
    case 'blizzard':
      return Colors.grey;
    case 'mist':
      return Colors.blueGrey;
    case 'patchy rain possible':
    case 'light rain':
    case 'patchy light rain':
    case 'patchy light rain with thunder':
      return Colors.lightBlue;
    case 'moderate rain at times':
    case 'moderate rain':
    case 'heavy rain at times':
    case 'heavy rain':
    case 'light rain shower':
    case 'moderate or heavy rain shower':
    case 'torrential rain shower':
    case 'moderate or heavy rain with thunder':
    case 'patchy sleet possible':
    case 'light sleet':
    case 'patchy moderate snow':
    case 'moderate snow':
    case 'moderate or heavy snow':
    case 'patchy heavy snow':
    case 'heavy snow':
    case 'light snow showers':
    case 'moderate or heavy snow showers':
    case 'blowing snow':
      return Colors.blue;
    case 'patchy freezing drizzle possible':
    case 'freezing drizzle':
    case 'heavy freezing drizzle':
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
      return Colors.deepPurple;
    case 'thundery outbreaks possible':
    case 'patchy light drizzle':
    case 'light drizzle':
    case 'patchy heavy snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.deepOrange;
    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
    case 'patchy snow possible':
    case 'light snow':
    case 'patchy light snow':
    case 'patchy light snow with thunder':
      return Colors.lightBlue;
    default:
      return Colors.blue;
  }
}