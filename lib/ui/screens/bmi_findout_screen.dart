import 'package:bmi_calculator/controllers/theme_controller.dart';
import 'package:bmi_calculator/ui/utils/text_strings.dart';
import 'package:bmi_calculator/ui/widgets/bmi_category.dart';
import 'package:bmi_calculator/ui/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiFindOutScreen extends StatelessWidget{
  BmiFindOutScreen({super.key,});

  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SingleChildScrollView(
           child: Padding(
               padding: const EdgeInsets.all(16),
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   const SizedBox(height: 30,),
                   const Text(TextStrings.bmiTitle,style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.bold
                   ),),
                  const SizedBox(height: 10,),
                   Text(TextStrings.description,
                         style: TextStyle(
                           color: themeController.isDarkMode ? Colors.white : Colors.black,

                         ),
                       ),
                   const SizedBox(height: 10,),
                  const  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         SectionHeader(text: TextStrings.bmiText1) ]
           ),
                   const SizedBox(height: 15,),
                   const Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children : [
                         Text(TextStrings.bmiFormula,
                           style: TextStyle(
                               fontWeight: FontWeight.bold,
                               letterSpacing: 0.5
                           ),)
                       ]
                   ),
                   const SizedBox(height: 15,),
                   const Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                       children : [
                        SectionHeader(text: TextStrings.bmiText2)
                       ]
                   ),
                           const Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               SizedBox(height: 10,),
                               Wrap(children: [
               BmiCategory(text: TextStrings.bmiRange1),
               BmiCategory(text: TextStrings.bmiRange2),
               BmiCategory(text: TextStrings.bmiRange3),
               BmiCategory(text: TextStrings.bmiRange4),
               BmiCategory(text: TextStrings.bmiRange5),
               BmiCategory(text: TextStrings.bmiRange6),
                               ],)
                             ]
                           )
                       ],
                     ),
    )
       ),
     );
  }
  
}