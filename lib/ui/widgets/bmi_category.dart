import 'package:flutter/material.dart';

class BmiCategory extends StatelessWidget{
  const BmiCategory({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
     return Padding(
         padding: const EdgeInsets.only(bottom: 17),
       child: Text(text,
         style: const TextStyle(
             fontWeight: FontWeight.normal,
             letterSpacing: 0.5
         ),),
     );
  }

}