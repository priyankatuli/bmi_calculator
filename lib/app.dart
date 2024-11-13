import 'package:bmi_calculator/config/theme.dart';
import 'package:bmi_calculator/controller_binders.dart';
import 'package:bmi_calculator/controllers/theme_controller.dart';
import 'package:bmi_calculator/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BmiCalculatorApp extends StatelessWidget{
  const BmiCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
          initialBinding: ControllerBinders(),
          title: 'BMI Calculator',
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
          //themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
        );
      }
  }
