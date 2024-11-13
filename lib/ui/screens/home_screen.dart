import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/height_section.dart';
import 'package:bmi_calculator/components/primary_button.dart';
import 'package:bmi_calculator/components/theme_change_section.dart';
import 'package:bmi_calculator/controllers/gender_controller.dart';
import 'package:bmi_calculator/ui/screens/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/age_section.dart';
import '../../../components/weight_section.dart';
import '../utils/text_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  final GenderController genderController = Get.find<GenderController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    TextStrings.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  ThemeChangeSection(),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    TextStrings.subTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GetBuilder<GenderController>(
                builder: (genderController) {
                  return Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          onTap: () {
                            genderController.changeGender(true);
                          },
                          icon: Icons.male_rounded,
                          buttonName: TextStrings.maleBtn,
                          isSelected: genderController.isSelectedGender,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: PrimaryButton(
                          icon: Icons.female_rounded,
                          buttonName: TextStrings.femaleBtn,
                          onTap: () {
                            genderController.changeGender(false);
                          },
                          isSelected: !genderController.isSelectedGender,
                        ),
                      ),
                    ],
                  );
                }
              ),
              const SizedBox(height: 20),
              const Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 2,
                          child: HeightSection()),
                      SizedBox(width: 15,),
                      Expanded(
                        flex: 2,
                        child: Column(
                            children: [
                              WeightSection(),
                              SizedBox(height: 15,),
                              AgeSection(),
                            ],
                          ),
                      ),
                    ],
                  ),
              ),

              const SizedBox(height: 20),
              CalculateButton(
                  icon: Icons.calculate_outlined,
                  buttonName: "Calculate",
                  onTap: (){
                    Get.to(() => BmiScreen());

                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
