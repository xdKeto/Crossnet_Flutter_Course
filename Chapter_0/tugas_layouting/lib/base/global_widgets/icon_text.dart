import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final double textSize;
  final double iconSize;
  const IconText(
      {super.key,
      required this.icon,
      required this.text,
      required this.color,
      required this.textSize,
      required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: iconSize,
          color: color,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: AppStyles.textFont.copyWith(
              fontSize: textSize, color: color, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
