import 'package:bmi_calculator/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculateButton extends StatelessWidget{
  CalculateButton({super.key,
    required this.icon,
    required this.buttonName,
    required this.onTap,
}
      );

  final IconData icon;
  final String buttonName;
  final VoidCallback onTap;
  final ThemeController themeController = Get.find<ThemeController>();


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.black),
            const SizedBox(width: 5,),
            Text(buttonName, style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                color: Colors.black
            ),)
          ],
        ),
      ),
    );
  }
}