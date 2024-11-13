import 'package:bmi_calculator/controllers/height_controller.dart';
import 'package:bmi_calculator/ui/utils/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSection extends StatelessWidget{
  const HeightSection({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
             padding: const EdgeInsets.all(10),
             width: 150,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.blueGrey.withOpacity(0.2),
             ),
             child: Column(
               children: [
                 const Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(TextStrings.height,
                       style: TextStyle(
                         fontWeight: FontWeight.bold
                       ),
                     ),
                   ],
                 ),
                   GetBuilder<HeightController>(     //GetBUilder to listen height changes
                     builder: (heightController) {
                       return Expanded(
                         child: SfSlider.vertical(
                           min: 100,
                           max: 500,
                           value: heightController.height,
                           // Adjust default value to be within range
                           interval: 50,
                           showTicks: true,
                           showLabels: true,
                           enableTooltip: true,
                           minorTicksPerInterval: 1,
                           onChanged: (value) {
                             heightController.onHeightChanged(value);
                           },
                         ),
                       );
                     }
                   ),
               ],
             ),
     );
  }

}