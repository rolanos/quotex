import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'DrukCyr',
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'DrukCyr',
      ),

      //for button
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
      ),
    ),
  );
}
