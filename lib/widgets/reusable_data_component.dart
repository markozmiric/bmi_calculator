import 'package:flutter/material.dart';

class ReusableDataComponent extends StatelessWidget {
  final String text;
  final int data;
  final VoidCallback dataValueIncrease;
  final VoidCallback dataValueDecrease;

  const ReusableDataComponent(
      this.text, this.data, this.dataValueIncrease, this.dataValueDecrease,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$data',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RawMaterialButton(
              onPressed: dataValueDecrease,
              shape: const CircleBorder(),
              fillColor: Colors.grey,
              padding: const EdgeInsets.all(5),
              constraints: const BoxConstraints(maxWidth: double.infinity),
              child: const Icon(
                Icons.remove,
                size: 35,
              ),
            ),
            const SizedBox(width: 10),
            RawMaterialButton(
              onPressed: dataValueIncrease,
              shape: const CircleBorder(),
              fillColor: Colors.grey,
              padding: const EdgeInsets.all(5),
              constraints: const BoxConstraints(maxWidth: double.infinity),
              child: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
