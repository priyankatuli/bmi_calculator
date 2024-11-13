import 'package:bmi_calculator/config/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme:  ColorScheme.light(
        background: lightBgColor,
         primary: lightPrimaryColor,
         onBackground:  lightFontColor,
         primaryContainer: lightDivColor,
         onPrimaryContainer: lightFontColor,
         onSecondaryContainer: labelColor

  )

);

ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
      background: darkBgColor,
      primary: darkPrimaryColor,
      onBackground:  darkFontColor,
      primaryContainer: darkDivColor,
      onPrimaryContainer:darkFontColor,
      onSecondaryContainer: darkLabelColor
  )

);