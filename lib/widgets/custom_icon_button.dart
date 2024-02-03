import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

IconButton customIconButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SearchView(),
        ),
      );
    },
    icon: const Icon(
      Icons.search,
      color: Colors.white,
      size: 27,
    ),
  );
}
