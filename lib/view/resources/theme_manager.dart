import 'package:flutter/material.dart';
import 'package:game_app/view/resources/color_manager.dart';
import 'package:game_app/view/resources/font_manager.dart';
import 'package:game_app/view/resources/style_manager.dart';

import 'icon_manager.dart';

ThemeData buildDarkTheme() {
  const ColorScheme colorScheme = ColorScheme.light(
      primary: ColorManager.primary,
      background: ColorManager.darkerPrimary,
      secondary: ColorManager.darkPrimary);

  return ThemeData(
    colorScheme: colorScheme,
    useMaterial3: true,
    fontFamily: FontFamilly.fontFamilly,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.background,
    disabledColor: ColorManager.primaryDesabled,
    primaryColorDark: colorScheme.secondary,
    appBarTheme: _appBarTheme(colorScheme),
    iconTheme: _buildIconTheme(
      ColorManager.primaryDesabled,
    ),
    textTheme: _buildTextTheme(),
  );
}

AppBarTheme _appBarTheme(ColorScheme colorScheme) {
  return AppBarTheme(
    color: colorScheme.background, // Set background color for AppBar
    centerTitle: true, // Center the title
    iconTheme: const IconThemeData(
        color: Color.fromARGB(204, 238, 235, 241),
        size: IconSize.medium), // Set icon color
  );
}

IconThemeData _buildIconTheme(Color iconColor) {
  return IconThemeData(color: iconColor, size: IconSize.medium);
}

TextTheme _buildTextTheme() {
  return TextTheme(
      displayLarge:
          getBoldStyle(color: ColorManager.text, fontSize: FontSize.sx),
      labelSmall:
          getRegularStyle(color: ColorManager.primary, fontSize: FontSize.s12),
      headlineLarge:
          getBoldStyle(color: ColorManager.text, fontSize: FontSize.s20),
      headlineSmall:
          getLightStyle(color: ColorManager.subtitle, fontSize: FontSize.s12),
      bodySmall:
          getLightStyle(color: ColorManager.text, fontSize: FontSize.s12),
      titleSmall:
          getSemiBoldStyle(color: ColorManager.text, fontSize: FontSize.s16));
  //;
}
