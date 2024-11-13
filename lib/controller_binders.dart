import 'package:bmi_calculator/controllers/age_controller.dart';
import 'package:bmi_calculator/controllers/gender_controller.dart';
import 'package:bmi_calculator/controllers/height_controller.dart';
import 'package:bmi_calculator/controllers/theme_controller.dart';
import 'package:bmi_calculator/controllers/weight_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerBinders extends Bindings{
  @override
  void dependencies() {
      Get.lazyPut(() => ThemeController(),fenix: true);
      Get.lazyPut(() => GenderController(),fenix: true);
      Get.lazyPut(() => WeightController(),fenix: true);
      Get.lazyPut(() => AgeController(),fenix: true);
      Get.lazyPut(() => HeightController(),fenix: true);
  }

}