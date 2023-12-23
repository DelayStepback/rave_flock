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
          fontSize: 72.sp, fontWeight: FontWeight.bold, color: Colors.yellow),
      titleLarge: TextStyle(
        fontSize: 42.sp,
      ),
      titleMedium: TextStyle(
        fontSize: 25.sp,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
          fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.bold),
      bodySmall: TextStyle(fontSize: 12.sp, color: Colors.white));
}
