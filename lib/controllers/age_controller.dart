import 'package:get/get.dart';

class AgeController extends GetxController{

  int age = 25; // default age value

  void increaseAge(){
    age++;
    update();
  }

  void decreaseAge(){
    if(age > 0){
      age--;
      update();
    }
  }


}