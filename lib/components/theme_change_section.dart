import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/theme_controller.dart';

class ThemeChangeSection extends StatelessWidget {
  const ThemeChangeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.all(8),
      //height: 50,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(10)
      ),
      child:GetBuilder<ThemeController>(
        builder: (themeController) {
          return Row(
            children: [
              IconButton(onPressed: () {
                themeController.onChangedTheme();
              },
                  icon: Get.isDarkMode
                      ? const Icon(Icons.dark_mode_outlined)
                      : const Icon(Icons.light_mode_outlined)),
              const SizedBox(width: 2,),
            ],
          );
        }
      ),
    );
  }
}