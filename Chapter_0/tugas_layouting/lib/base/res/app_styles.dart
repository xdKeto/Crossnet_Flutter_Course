import 'package:flutter/material.dart';

class AppStyles {
  static Color primaryColor = const Color(0xff7161EF);
  static Color secondaryColor = const Color(0xff9D93F4);
  static Color textColor = const Color(0xff1B1442);
  static Color accentColor = const Color(0xffE9E8ED);
  static Color grayColor = const Color(0xffD3D3D3);
  static Color whiteColor = const Color(0xfff4f6fd);
  static Color pastelBlue = const Color(0xffADD8E6);
  static Color blueBlue = const Color(0xff0047AB);

  static TextStyle textFont = const TextStyle(
    fontFamily: 'Inter',
  );
  static TextStyle subHeader = const TextStyle(
      fontFamily: 'Inter', fontSize: 24, fontWeight: FontWeight.bold);

  static BoxDecoration boxPutih = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: AppStyles.whiteColor,
  );
}
