import 'dart:math';

import 'package:flutter/material.dart';

class UserBmiModel {
  String gender;
  int height;
  int weight;
  int age;
  UserBmiModel({
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });
  double get resultBmi {
    double calculateBmi = (weight / pow(height / 100, 2)).roundToDouble();
    return calculateBmi;
  }

  String get stringView {
    if (resultBmi < 18.5) {
      return "Underweight";
    } else if (resultBmi < 25) {
      return "Normal";
    } else if (resultBmi < 30) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String get healthAdvice {
    if (resultBmi < 18.5) {
      return "You are underweight. You may need to gain some weight.";
    } else if (resultBmi < 25) {
      return "You have a normal body weight. Good job!";
    } else if (resultBmi < 30) {
      return "You are overweight. Consider maintaining a healthy lifestyle.";
    } else {
      return "You are obese. Consider talking to a healthcare professional.";
    }
  }
}
