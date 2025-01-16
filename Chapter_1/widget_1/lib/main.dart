import 'package:flutter/material.dart';
import 'package:widget_1/bg_music.dart';
import 'package:widget_1/dt_picker.dart';
import 'package:widget_1/table.dart';
import 'package:widget_1/autocomplete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: const [
              Center(
                child: Text(
                  'DateTime Picker',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: DtPicker(),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  'Table Widget',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Tables(),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  'BG Music and Vibrate',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: BgMusic(),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                child: Text(
                  'Autocomplete Textfield',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: AutocompleteText(),
              ),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ));
  }
}
