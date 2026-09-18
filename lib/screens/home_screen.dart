import 'package:flutter/material.dart';

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

      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png"),
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: .w400,
                          color: Color(0xff8B8C9E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),

          Expanded(child: Row(children: [
            
                    ],)),
        ],
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
