import 'package:flutter/material.dart';
import 'package:weather_app/utils/responsive_font_size.dart';

buildErrorText(BuildContext context, {String? text}) {
  return Center(
    child: Text(
      text ?? 'Oops there was an error, please try later !',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
