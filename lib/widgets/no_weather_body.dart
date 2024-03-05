import 'package:flutter/material.dart';
import 'package:weather_app/utils/responsive_font_size.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * .03,
      ),
      child: Center(
        child: Text(
          'There is no weather 😔 Start \n searching now 🔍',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
