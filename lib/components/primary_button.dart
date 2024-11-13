import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget{
  const PrimaryButton({super.key,
    required this.icon,
    required this.buttonName,
    required this.onTap,
    this.isSelected = false}
      );

  final IconData icon;
  final String buttonName;
  final VoidCallback onTap;
  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: onTap,
            child: Container(
              height: 55,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: isSelected ? const Color(0xff6699ff): Colors.grey.shade300
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: isSelected ? Colors.white : Colors.black,),
                  Text(buttonName, style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      color: isSelected ? Colors.white : Colors.black
                  ),)
                ],
              ),
            ),
    );
  }
}