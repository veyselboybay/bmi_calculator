import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    this.height,
    this.weight,
  });

  final int? height;
  final int? weight;
  //final int? age;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);

    return _bmi!.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher that normal body weight. Try to excercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower that normal body weight. You can eat a bit more!';
    }
  }
}
