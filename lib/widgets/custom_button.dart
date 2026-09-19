import 'package:flutter/material.dart';

class CusttomButtonBmi extends StatelessWidget {
  const CusttomButtonBmi({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xffE83D67),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
