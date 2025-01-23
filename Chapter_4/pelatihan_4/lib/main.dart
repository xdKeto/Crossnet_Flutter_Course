import 'package:flutter/material.dart';
import 'package:pelatihan_4/berry.dart';
import 'package:pelatihan_4/data_controller.dart';
import 'package:pelatihan_4/pokemon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Berry.fetchData().then((value) {
                      setState(() {
                        print(value.firmness.name);
                      });
                    });

                    Pokemon.fetchData().then((value) {
                      setState(() {
                        // print(value);
                      });
                    });
                  },
                  child: const Text("Fetch Data"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
