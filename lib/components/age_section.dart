import 'package:bmi_calculator/components/second_button.dart';
import 'package:bmi_calculator/controllers/age_controller.dart';
import 'package:bmi_calculator/ui/utils/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSection extends StatelessWidget{
  const AgeSection({super.key,});


  @override
  Widget build(BuildContext context) {
    return
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)
            ),
            height: 200,
            width: 200,
            child: Column(
              children: [
                const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(TextStrings.age,
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                GetBuilder<AgeController>(
                  builder: (ageController) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20,),
                        Text('${ageController.age}',
                          style: const TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    );
                  }
                ),
                const SizedBox(height: 15,),
                GetBuilder<AgeController>(
                  builder: (ageController) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondButton(onTap: () {
                          ageController.increaseAge();
                        }, icon: Icons.add),
                        SecondButton(onTap: () {
                          ageController.decreaseAge();
                        }, icon: Icons.remove),
                      ],
                    );
                  }
                )
              ],),
      );
  }
}