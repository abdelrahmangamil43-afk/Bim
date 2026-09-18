import 'package:flutter/material.dart';
import 'package:bmi/widgets/gender.dart';
import 'package:bmi/widgets/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                Genderwidget(image: "assets/images/malee.png", title: "Male"),
                Genderwidget(
                  image: "assets/images/femalee.png",
                  title: "Female",
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
                          "170",
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
                      value: 170,
                      onChanged: (value) {},
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
                    value: 60,
                    add: () {},
                    remove: () {},
                  ),
                  Userwidget(
                    title: "Age",
                    value: 26,
                    add: () {},
                    remove: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {},
        color: Color(0xffE83D67),
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Text(
          'Calculate',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
