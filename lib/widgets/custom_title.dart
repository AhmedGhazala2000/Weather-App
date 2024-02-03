import 'package:flutter/material.dart';

Padding customTitle({required String title}) {
  return Padding(
    padding:const EdgeInsets.only(left: 10),
    child: Text(
      title,
      style:const TextStyle(
          color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
    ),
  );
}