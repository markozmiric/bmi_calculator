import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProvider extends ChangeNotifier {
  int _height = 180;
  int _weight = 80;
  int _age = 40;

  final Color _activeColor = const Color(0xFF424242);
  final Color _inactiveColor = const Color(0xFF212121);

  Color _maleComponentColor = const Color(0xFF212121);
  Color _femaleComponentColor = const Color(0xFF212121);

  late double _bmi;

  final List _bmiValues = [
    ['UNDERWEIGHT', 'Your weight is bellow average. You should eat more.'],
    ['NORMAL', 'Your weight is normal. Great job!'],
    ['OVERWEIGHT', 'Your weight is above average. You should eat less.'],
    ['OBESE', 'Your weight is way above average. You should go on a diet.'],
  ];

  int getHeight() {
    return _height;
  }

  int getWeight() {
    return _weight;
  }

  int getAge() {
    return _age;
  }

  Color getMaleComponentColor() {
    return _maleComponentColor;
  }

  Color getFemaleComponentColor() {
    return _femaleComponentColor;
  }

  double getBMI() {
    return _bmi;
  }

  List getBMIMessages() {
    if (_bmi < 18.5) return _bmiValues[0];
    if (_bmi >= 18.5 && _bmi < 25.0) return _bmiValues[1];
    if (_bmi >= 25.0 && _bmi < 30) return _bmiValues[2];
    if (_bmi >= 30.0) return _bmiValues[3];
    return [0];
  }

  void weightIncrease() {
    _weight++;
    notifyListeners();
  }

  void weightDecrease() {
    _weight--;
    notifyListeners();
  }

  void ageIncrease() {
    _age++;
    notifyListeners();
  }

  void ageDecrease() {
    _age--;
    notifyListeners();
  }

  void heightChange(double newHeight) {
    _height = newHeight.toInt();
    notifyListeners();
  }

  void maleButtonPressed() {
    _maleComponentColor = _activeColor;
    _femaleComponentColor = _inactiveColor;
    notifyListeners();
  }

  void femaleButtonPressed() {
    _femaleComponentColor = _activeColor;
    _maleComponentColor = _inactiveColor;
    notifyListeners();
  }

  void calculateBMI() {
    _bmi = _weight / ((_height / 100) * (_height / 100));
  }
}
