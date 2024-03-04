import 'package:flutter/material.dart';

buildErrorText({String? text}) {
  return Center(
    child: Text(
      text ?? 'Oops there was an error, please try later !',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    ),
  );
}
