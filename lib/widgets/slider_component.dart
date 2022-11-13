import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SliderComponent extends StatelessWidget {
  const SliderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, myProvider, child) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${myProvider.getHeight()}',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('cm'),
            ],
          ),
          Slider(
            value: myProvider.getHeight().toDouble(),
            onChanged: (double newValue) {
              myProvider.heightChange(newValue);
            },
            min: 120,
            max: 220,
            activeColor: Colors.pink,
            inactiveColor: Colors.grey,
          )
        ],
      ),
    );
  }
}
