import 'package:flutter/material.dart';
import 'package:rave_flock/common/themes/custom_default_input_theme/custom_default_input_theme_light.dart';
import 'package:rave_flock/common/themes/text_styles.dart';
import 'package:rave_flock/common/themes/theme_constants.dart';

import 'custom_default_input_theme/custom_default_input_theme_dark.dart';

// later
ThemeData lightThemeData() {
  return ThemeData.light().copyWith(
      useMaterial3: true,
      primaryColor: kPrimaryColorLight,
      scaffoldBackgroundColor: kScaffoldBackgroundColorLightTheme,
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: kContentColorLightTheme),
      // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
      //     .apply(bodyColor: kContentColorLightTheme),
      colorScheme: const ColorScheme.light(
        primary: kPrimaryColorLight,
        secondary: kSecondaryColorLight,
        error: kErrorColorLight,
      ),
      inputDecorationTheme: CustomDefaultInputThemeLight().theme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: kPrimaryColorLight),
        showUnselectedLabels: true,
      ),
      textTheme: TextStyles.TextThemeLight);
}

ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
      useMaterial3: true,
      primaryColor: kPrimaryColorDark,
      scaffoldBackgroundColor: kScaffoldBackgroundColorDarkTheme,
      appBarTheme:
          appBarTheme.copyWith(backgroundColor: kScaffoldBackgroundColorDarkTheme),
      iconTheme: const IconThemeData(color: kIconsColorDarkTheme),
      // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
      //     .apply(bodyColor: kContentColorDarkTheme),
      colorScheme: const ColorScheme.dark().copyWith(
        primary: kPrimaryColorDark,
        secondary: kSecondaryColorDark,
        error: kErrorColorDark,
      ),
      inputDecorationTheme: CustomDefaultInputThemeDark().theme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kContentColorDarkTheme,
        selectedItemColor: Colors.white70,
        unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
        selectedIconTheme: const IconThemeData(color: kPrimaryColorDark),
        showUnselectedLabels: true,
      ),
      textTheme: TextStyles.TextThemeDark.apply(bodyColor: kTextDefaultColorDark),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: kButtonForegroundColorDark,
            textStyle: TextStyles.TextThemeDark.bodyMedium,
              backgroundColor: kButtonBackgroundColorDark)));
}

const appBarTheme = AppBarTheme(centerTitle: true, elevation: 0, backgroundColor: Colors.transparent);
