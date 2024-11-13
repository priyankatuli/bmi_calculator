import 'package:get/get.dart';

class WeightController extends GetxController{

  int weight = 12; //default value


 void increaseWeight(){
   weight++;
   update();
 }

 void decreaseWeight(){
   if(weight > 0) {
     weight--;
     update();
   }
 }





}