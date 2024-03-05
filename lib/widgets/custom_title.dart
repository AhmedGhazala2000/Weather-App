import 'package:flutter/material.dart';
import 'package:weather_app/utils/responsive_font_size.dart';

Padding customTitle(BuildContext context, {required String title}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Text(
      title,
      style: TextStyle(
          color: Colors.white,
          fontSize: getResponsiveFontSize(context, fontSize: 22),
          fontWeight: FontWeight.bold),
    ),
  );
}
