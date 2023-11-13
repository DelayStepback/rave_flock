import 'package:flutter/material.dart';
import 'package:rave_flock/common/themes/custom_default_input_theme/custom_default_input_theme_light.dart';
import 'package:rave_flock/common/themes/text_styles.dart';
import 'package:rave_flock/common/themes/theme_constants.dart';

import 'custom_default_input_theme/custom_default_input_theme_dark.dart';

// later
ThemeData lightThemeData() {
  return ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //     .apply(bodyColor: kContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    inputDecorationTheme: CustomDefaultInputThemeLight().theme(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
      textTheme: TextStyles.TextThemeLight

  );
}

ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
    useMaterial3: true,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme.copyWith(backgroundColor: kContentColorLightTheme),
    iconTheme: const IconThemeData(color: kContentColorDarkTheme),
    // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //     .apply(bodyColor: kContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    inputDecorationTheme: CustomDefaultInputThemeDark().theme(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
    textTheme: TextStyles.TextThemeDark
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);