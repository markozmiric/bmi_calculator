import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';
import '../widgets/reusable_container.dart';
import '../widgets/reusable_gender_component.dart';
import '../widgets/slider_component.dart';
import '../widgets/reusable_data_component.dart';
import '../widgets/reusable_button_component.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Consumer<MyProvider>(
                    builder: (context, myProvider, child) => ReusableContainer(
                      color: myProvider.getMaleComponentColor(),
                      function: myProvider.maleButtonPressed,
                      child: const ReusableGenderComponent(
                        Icons.male,
                        'MALE',
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Consumer<MyProvider>(
                    builder: (context, myProvider, child) => ReusableContainer(
                      color: myProvider.getFemaleComponentColor(),
                      function: myProvider.femaleButtonPressed,
                      child: const ReusableGenderComponent(
                        Icons.female,
                        'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const ReusableContainer(
              child: SliderComponent(),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Row(
                children: [
                  ReusableContainer(
                    child: Consumer<MyProvider>(
                        builder: (context, myProvider, child) {
                      return ReusableDataComponent(
                        'WEIGHT',
                        myProvider.getWeight(),
                        myProvider.weightIncrease,
                        myProvider.weightDecrease,
                      );
                    }),
                  ),
                  const SizedBox(width: 15),
                  ReusableContainer(
                    child: Consumer<MyProvider>(
                        builder: (context, myProvider, child) {
                      return ReusableDataComponent(
                        'AGE',
                        myProvider.getAge(),
                        myProvider.ageIncrease,
                        myProvider.ageDecrease,
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                Provider.of<MyProvider>(context, listen: false).calculateBMI();
                Navigator.pushNamed(context, '/second');
              },
              child: const ReusableButtonComponent('CALCULATE'),
            ),
          ],
        ),
      ),
    );
  }
}
