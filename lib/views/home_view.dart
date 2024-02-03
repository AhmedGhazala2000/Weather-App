import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/widgets/custom_icon_button.dart';
import 'package:weather_app/widgets/custom_title.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  customTitle(title: 'Weather App'),
        actions: [
          customIconButton(context),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return const NoWeatherBody();
          } else if (state is WeatherLoadedState) {
            return WeatherInfoBody();
          } else if (state is WeatherFailureState) {
            return Center(
              child: Text(
                state.errMessage,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            );
          } else {
            return const Center(
              child: Text(
                'Oops there was an error, please try later !',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            );
          }
        },
      ),
    );
  }



}
