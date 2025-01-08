import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class Categories extends StatelessWidget {
  final Map<String, dynamic> category;
  const Categories({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const  EdgeInsets.all(8),
      width: size.width * 0.28,
      height: 75,
      decoration: AppStyles.boxPutih,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(category['icon']),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            category['name'],
            style: AppStyles.textFont.copyWith(
                fontWeight: FontWeight.w600, color: AppStyles.textColor),
          )
        ],
      ),
    );
  }
}
