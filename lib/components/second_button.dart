import 'package:flutter/material.dart';

class SecondButton extends StatelessWidget{
  const SecondButton({super.key, required this.onTap, required this.icon});

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
      return  InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Icon(icon,
              color: Theme.of(context).colorScheme.primaryContainer
          ),
        ),
      );
  }

}