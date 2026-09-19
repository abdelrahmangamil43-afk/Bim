import 'dart:math';

import 'package:bmi/model/user_bmi_model.dart';
import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi/widgets/gender.dart';
import 'package:bmi/widgets/user.dart';
import 'package:bmi/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String route = "HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  int height = 150;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: .w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff24263B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 25,
          children: [
            SizedBox(height: 20),
            Row(
              spacing: 10,
              children: [
                Genderwidget(
                  image: "assets/images/malee.png",
                  title: "Male",
                  isSelected: isMale,
                  onTap: () {
                    isMale = true;
                    setState(() {});
                  },
                ),
                Genderwidget(
                  image: "assets/images/femalee.png",
                  title: "Female",
                  isSelected: !isMale,
                  onTap: () {
                    isMale = false;
                    setState(() {});
                  },
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: .w400,
                        color: Color(0xff8B8C9E),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: .w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: .w400,
                            color: Color(0xff8B8C9E),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Color(0xffE83D67),
                      min: 50,
                      max: 250,
                      value: height.toDouble(),
                      onChanged: (value) {
                        height = value.toInt();
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  Userwidget(
                    title: "Weight",
                    value: weight,
                    add: () {
                      if (weight <= 100) {
                        weight++;
                        setState(() {});
                      }
                    },
                    remove: () {
                      if (weight >= 4) {
                        weight--;
                      }
                      setState(() {});
                    },
                  ),
                  Userwidget(
                    title: "Age",
                    value: age,
                    add: () {
                      if (age <= 100) {
                        age++;
                        setState(() {});
                      }
                    },
                    remove: () {
                      if (age >= 1) {
                        age--;
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CusttomButtonBmi(
        title: "Calculate",
        onPressed: () {
          // double calculateBmi = (weight / pow(height / 100, 2)).roundToDouble();
          // print(calculateBmi);
          var user = UserBmiModel(
            gender: isMale ? "Male" : "Female",
            height: height,
            weight: weight,
            age: age,
          );
          Navigator.of(context).pushNamed(ResultScreen.route, arguments: user);
        },
      ),
    );
  }
}
