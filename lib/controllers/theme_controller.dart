import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{

  //RxBool isDark = false.obs; //observer variable
/*
    void changeTheme()async{
      isDark.value = !isDark.value; //true
      Get.changeThemeMode(isDark.value ? ThemeMode.dark : ThemeMode.light);//if isDark = true then dark hoye jabe false thakle light hoye jabe
      update();
    }
 */

  //non observer variable
  ///Get r method isDarkMode r ekta changeThemeMode

  bool isDarkMode = Get.isDarkMode;

  void onChangedTheme(){
    isDarkMode = !isDarkMode;
    Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    update();   //to notify the GetBuilder to rebuild the UI
  }



}

