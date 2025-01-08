import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/res/app_styles.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  List<String> items = [
    'Jombang, East Java',
    'Surabaya, East Java',
    'Malang, East Java'
  ];
  String? selected = 'Jombang, East Java';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButton<String>(
          value: selected,
          items: items
              .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: AppStyles.textFont.copyWith(
                        fontSize: 14,
                        color: AppStyles.textColor,
                        fontWeight: FontWeight.w600),
                  )))
              .toList(),
          onChanged: (item) => setState(() => selected = item)),
    );
  }
}
