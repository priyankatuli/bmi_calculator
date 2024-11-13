import 'package:bmi_calculator/components/second_button.dart';
import 'package:bmi_calculator/controllers/weight_controller.dart';
import 'package:bmi_calculator/ui/utils/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeightSection extends StatelessWidget{
  const WeightSection({super.key,});


  @override
  Widget build(BuildContext context) {

    //WeightController weightController = Get.find<WeightController>();

    return Container(
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
                      Text(TextStrings.weight,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                  GetBuilder<WeightController>(
                    builder: (weightController) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20,),
                          Text('${weightController.weight}',
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
                  GetBuilder<WeightController>(
                    builder: (weightController) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SecondButton(
                              onTap: () {
                                weightController.increaseWeight();
                              }, icon: Icons.add),
                          SecondButton(onTap: () {
                                weightController.decreaseWeight();
                          }, icon: Icons.remove),

                        ],
                      );
                    }
                  )
                ],
              ),
    );
    }
}