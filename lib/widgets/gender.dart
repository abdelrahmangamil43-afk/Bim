import 'package:flutter/material.dart';

class Genderwidget extends StatelessWidget {
  const Genderwidget({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xff24263B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Image.asset(image),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: .w400,
                color: Color(0xff8B8C9E),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
