import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Budi bermain bola Budi bermain bola Budi bermain bola Budi bermain bola Budi bermain bola Budi bermain bola Budi bermain bola Budi bermain bola Budi bermain bola ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.amber,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.red,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.green,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.purple,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 300,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  verticalDirection: VerticalDirection.up,
                  direction: Axis.vertical,
                  runSpacing: 30,
                  spacing: 20,
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.red,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.green,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.pink,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 52,
                      width: 52,
                      color: Colors.purple,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 300,
                  width: 300,
                  padding: const EdgeInsets.all(32),
                  // color: Colors.purple,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                      border: Border.all(color: Colors.green, width: 5),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.red, spreadRadius: 10, blurRadius: 5)
                      ]),
                  child: const Text(
                    'ASDASDASDASD',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
