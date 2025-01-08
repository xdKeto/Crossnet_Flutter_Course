import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String leftText;
  final String rightText;
  const DoubleText(
      {super.key, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: AppStyles.textFont
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          rightText,
          style: AppStyles.textFont.copyWith(
            color: AppStyles.textColor,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
