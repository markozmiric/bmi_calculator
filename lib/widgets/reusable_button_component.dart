import 'package:flutter/material.dart';

class ReusableButtonComponent extends StatelessWidget {
  final String buttonText;

  const ReusableButtonComponent(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.pink,
      alignment: Alignment.center,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
