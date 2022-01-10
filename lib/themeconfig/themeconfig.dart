import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';

class AppTheme {
  final Color primColor = Color(0xFF5D5FCE);
  final Color secondaryColor = Colors.white;

  final Color iconColor = Color(0XFF5D5FCE);

  final Color iconColor2 = Color(0XFF1F3847);
  final Color borderColor = Color(0XFF6AAED9);
  final Color borderColor2 = Colors.white;
  final gradientColor1 = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0XFF6AAED9),
        Colors.cyan[500],
      ]);
  final gradientColor2 = LinearGradient(begin: Alignment.topLeft, colors: [
    Colors.cyanAccent,
    Color(0XFF6AAED9),
    Colors.cyanAccent,
  ]);

  AppTheme(
      {primColor,
      iconColor,
      borderColor,
      gradientColor1,
      gradientColor2,
      secondaryColor});
}
