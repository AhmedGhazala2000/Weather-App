import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/utils/responsive_font_size.dart';
import 'package:weather_app/widgets/custom_title.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double buildResponsiveFontSize(double size) =>
        getResponsiveFontSize(context, fontSize: size);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: customTitle(context, title: 'Search City'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * .03,
          ),
          child: TextField(
            onSubmitted: (value) {
              BlocProvider.of<GetWeatherCubit>(context)
                  .getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: buildResponsiveFontSize(32),
                  horizontal: buildResponsiveFontSize(16)),
              labelText: 'Search',
              labelStyle: TextStyle(
                fontSize: buildResponsiveFontSize(16),
              ),
              hintText: 'Enter City Name',
              hintStyle: TextStyle(
                fontSize: buildResponsiveFontSize(16),
              ),
              suffixIcon: Icon(
                Icons.search,
                size: buildResponsiveFontSize(20),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}
