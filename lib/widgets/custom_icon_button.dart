import 'package:flutter/material.dart';
import 'package:weather_app/utils/responsive_font_size.dart';
import 'package:weather_app/views/search_view.dart';

IconButton customIconButton(BuildContext context) {
  return IconButton(
    padding: EdgeInsets.only(
      right: getResponsiveFontSize(context, fontSize: 5),
    ),
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SearchView(),
        ),
      );
    },
    icon: Icon(
      Icons.search,
      color: Colors.white,
      size: getResponsiveFontSize(context, fontSize: 27),
    ),
  );
}
