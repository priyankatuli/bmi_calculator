import 'package:get/get.dart';

class HeightController extends GetxController{

  double height = 150.0;

  void onHeightChanged(double value){
    height = value;
    update();  //notify the GetBuilder to rebuild the UI
  }


}