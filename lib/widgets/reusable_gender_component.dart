import 'package:flutter/material.dart';

class ReusableGenderComponent extends StatelessWidget {
  final IconData icon;
  final String text;

  const ReusableGenderComponent(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
