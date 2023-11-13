import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  // ignore: constant_identifier_names
  static const TextThemeLight = TextTheme(
    displayLarge: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 30,
      fontStyle: FontStyle.italic,
    ),
  );
  static TextTheme TextThemeDark = TextTheme(
    displayLarge: TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 30,
      fontStyle: FontStyle.italic,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.sp,
      color: Colors.white
    )
  );
}