import 'package:bmi_calculator/ui/screens/home_screen.dart';
import 'package:bmi_calculator/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;


  @override
  void initState(){
    super.initState();

    //to initialize the controller
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
        vsync: this // reducing unnecessary resources
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // Start position (bottom of screen)
      end: Offset.zero,           // End position (center of screen)
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut, //to smoothly finish the animation
    ));

    _controller.forward(); //start the animation
      moveToNextButton();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: _slideAnimation,
                  child: Image.asset(AssetsPath.splashImg,
                     width: 250,
                     height: 250,
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }

  Future<void> moveToNextButton() async{

   await Future.delayed(const Duration(seconds: 2));
   Get.offAll(() => const HomeScreen());
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();



  }

}