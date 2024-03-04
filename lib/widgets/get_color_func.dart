import 'package:flutter/material.dart';

MaterialColor getThemeColor({String? weatherCondition}) {
  if (weatherCondition == null) {
    return Colors.blue;
  }
  switch (weatherCondition.toLowerCase()) {
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
