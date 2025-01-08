import 'package:flutter/material.dart';
import 'package:tugas_layouting/base/global_widgets/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tugas Layout',
      debugShowCheckedModeBanner: false,
      home: BottomNavbar(),
    );
  }
}


