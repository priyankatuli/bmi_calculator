import 'package:get/get.dart';

class GenderController extends GetxController{

  //selectedGender true means male or false means female

 bool _isSelectedGender = true;

 bool get isSelectedGender => _isSelectedGender;
 

 void changeGender(bool isMale){
   _isSelectedGender = isMale;
   update();

 }





}