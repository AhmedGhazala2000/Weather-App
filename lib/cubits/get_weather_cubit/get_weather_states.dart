class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class WeatherLoadedState extends WeatherStates {}

class WeatherFailureState extends WeatherStates {
  final String errMessage;

  WeatherFailureState({required this.errMessage});
}
