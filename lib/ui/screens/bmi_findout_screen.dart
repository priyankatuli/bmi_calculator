import 'package:bmi_calculator/controllers/theme_controller.dart';
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
                   const Text('Body Mass Index',style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.bold
                   ),),
                  const SizedBox(height: 10,),
                   Text('Body Mass Index, or BMI, is a quick way to check if a person’s weight is healthy for their height.'
                       'Its calculated by dividing a persons weight by the square of their height. The result gives a number that falls into different categories: underweight, normal weight, overweight, or obese.',
                         style: TextStyle(
                           color: themeController.isDarkMode ? Colors.white : Colors.black,
                         ),
                       ),
                   const SizedBox(height: 10,),
                  const  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         SectionHeader(text: "BMI Formula: ") ]
           ),
                   const SizedBox(height: 15,),
                   const Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children : [
                         Text('BMI = (Weight in Kg) / (Height in meters ( m^2 ) )',
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
                        SectionHeader(text: "BMI Chart is: ")
                       ]
                   ),
                           const Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               SizedBox(height: 10,),
                               Wrap(children: [
               BmiCategory(text: "If BMI range is below from 18.5 then its Underweight."),
               BmiCategory(text: "If BMI range is below from 24.9 then its Normal Weight."),
               BmiCategory(text: "If BMI range is below from 29.9 then its Overweight."),
               BmiCategory(text: "If BMI range is below from 34.9 then its 1st Obesity."),
               BmiCategory(text: "If BMI range is below from 39.9 then its 2nd Obesity."),
               BmiCategory(text: "If BMI range is greater than 40 or above  then its Extreme Obesity."),
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