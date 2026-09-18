import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
