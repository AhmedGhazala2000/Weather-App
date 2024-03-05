class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class WeatherLoadingState extends WeatherStates {}

class WeatherSuccessState extends WeatherStates {}

class WeatherFailureState extends WeatherStates {
  final String errMessage;

  WeatherFailureState({required this.errMessage});
}
