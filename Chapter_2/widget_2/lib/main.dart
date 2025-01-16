import 'package:flutter/material.dart';
// import 'package:widget_2/HTML_Editor/html_editor.dart';
import 'package:widget_2/quill_editor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(backgroundColor: Colors.white, body: HtmlQuillEditor()),
    );
  }
}
