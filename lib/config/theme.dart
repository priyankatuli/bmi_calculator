import 'package:bmi_calculator/config/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme:  ColorScheme.light(
        surface: lightBgColor,
         primary: lightPrimaryColor,
         onSurface:  lightFontColor,
         primaryContainer: lightDivColor,
         onPrimaryContainer: lightFontColor,
         onSecondaryContainer: labelColor)
);

ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
      surface: darkBgColor,
      primary: darkPrimaryColor,
      onSurface:  darkFontColor,
      primaryContainer: darkDivColor,
      onPrimaryContainer:darkFontColor,
      onSecondaryContainer: darkLabelColor
  )

);