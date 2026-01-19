import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/controllers/age_controller.dart';
import 'package:bmi_calculator/controllers/height_controller.dart';
import 'package:bmi_calculator/controllers/theme_controller.dart';
import 'package:bmi_calculator/controllers/weight_controller.dart';
import 'package:bmi_calculator/ui/screens/bmi_findout_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class BmiScreen extends StatelessWidget{
  BmiScreen({super.key});

  final ThemeController themeController = Get.find<ThemeController>();
  final HeightController heightController = Get.find<HeightController>();
  final WeightController weightController = Get.find<WeightController>();
  final AgeController ageController = Get.find<AgeController>();

  double calculateBmi(){
    //Bmi formula - BMI = (weight in KM) / (height in m*m)
    final weight = weightController.weight.toDouble();
    final height = (heightController.height/100);   //convert to meter

      return  weight/ (height * height);
  }


  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
       title: Text('BMI',
       style: TextStyle(
         color: Theme.of(context).colorScheme.onSurface,
         fontWeight: FontWeight.bold,
         letterSpacing: 0.5
       ),
       ),
         backgroundColor:  Colors.blueGrey.withOpacity(0.5)),

       body: SingleChildScrollView(
           child: Padding(
               padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 Row(
                   children:  [
             Text('Your BMI is ${calculateBmi().toStringAsFixed(2)} & Age is ${ageController.age}',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  //color: Theme.of(context).colorScheme.onSurface
                    color: themeController.isDarkMode ? Colors.white : Colors.black
                ),
             ),
                     ]
                 ),
                     const SizedBox(height: 30,),
                          GetBuilder<WeightController>(
                            builder: (weightController) {
                              return GetBuilder<HeightController>(
                                  builder: (heightController) {
                                    double bmi = calculateBmi();
                                    return CircularPercentIndicator(
                                      animationDuration: 1000,
                                      animation: true,
                                      radius: 100,
                                      lineWidth: 30,
                                      percent: bmi/40, // assume 40 as a max Bmi for scaling
                                      circularStrokeCap: CircularStrokeCap.round,
                                      center: Text(bmi.toStringAsFixed(2),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                           // color: Theme.of(context).colorScheme.onSurface,
                                          color: themeController.isDarkMode ? Colors.white : Colors.black
                                        ),
                                      ),
                                      progressColor: Colors.blueAccent,
                                      backgroundColor: Colors.grey.shade300,
                                      footer: Text(_getBmiCategory(bmi),
                                        style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.6,
                                           //color: Theme.of(context).colorScheme.onSurface
                                          color: themeController.isDarkMode ? Colors.white : Colors.black
                                        )
                                      ),
                                    );
                                  }
                              );
                            }
                          ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    //color: Colors.white
                      color: themeController.isDarkMode ? Colors.white : Theme.of(context).colorScheme.primary
                  ),
                  
                  child: Text('Your Bmi is ${calculateBmi().toStringAsFixed(2)}. ${_getBmiDescription(calculateBmi())}',
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 0.5,
                        //color: Colors.black
                          color: themeController.isDarkMode ? Colors.black : Colors.black
                      ),),
                  )
                   ),
                 const SizedBox(height: 15,),
                 CalculateButton(icon: Icons.arrow_back_ios_new,
                     buttonName: 'Find out more', onTap: (){
                      Get.to(() => BmiFindOutScreen());
                 }
                 ),
         ]
           ),
     ),),
     );
  }
  //helper method to get BMI category
String _getBmiCategory(double bmi){
    if(bmi<18.5){
        return "Underweight";
    } else if(bmi< 24.9){
      return "Normal weight";
    } else if(bmi<29.9){
        return "Overweight";
    } else if(bmi<34.9){
       return "1st Obesity";
    } else if(bmi<39.9){
      return "2nd Obesity";
    } else{
      return "3rd Obesity";
    }
}

String _getBmiDescription(double bmi){
  if(bmi<18.5){
    return "You are underweight. Consider consulting a healthcare provider.";
  } else if(bmi< 24.9){
    return "You have a normal body weight. Good job!";
  } else if(bmi<29.9){
    return "You are overweight. Consider a balanced diet and exercise.";
  } else if(bmi<34.9){
    return "You are in the obesity range. Consult a healthcare provider for guidance.";
  } else if(bmi<39.9){
    return "You are in the obesity range. Consult a healthcare provider for guidance.";
  } else{
    return "You are in an extremely obesity range. Consult a healthcare provider for guidance.";
  }

}



}