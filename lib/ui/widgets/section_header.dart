import 'package:flutter/cupertino.dart';

class SectionHeader extends StatelessWidget{
  const SectionHeader({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
     return Text(
       text,
       style: const TextStyle(
         fontWeight: FontWeight.bold,
         letterSpacing: 0.5,
       ),
     );
  }

}