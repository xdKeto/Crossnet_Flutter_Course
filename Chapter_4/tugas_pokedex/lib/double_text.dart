import 'package:flutter/material.dart';

class DoubleText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const DoubleText({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(firstText, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        Text(secondText, style: TextStyle(fontSize: 16,),),
      ],
    );
  }
}