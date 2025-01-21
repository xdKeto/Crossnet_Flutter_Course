import 'package:flutter/material.dart';
import 'package:pelatihan_3/classes/person.dart';

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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Person orang = Person(id: 0, name: 'Yesto', alamat: 'Siwalankerto');

  List<Person> listOrang = [
    Person(id: 1, name: 'Yesto', alamat: 'pti'),
    Person(id: 2, name: 'Gon', alamat: 'darjo'),
    Person(id: 3, name: 'Sam', alamat: 'sarkem'),
    Person(id: 1, name: 'Yesto', alamat: 'pti'),
    Person(id: 2, name: 'Gon', alamat: 'darjo'),
    Person(id: 3, name: 'Sam', alamat: 'sarkem'),
    Person(id: 1, name: 'Yesto', alamat: 'pti'),
    Person(id: 2, name: 'Gon', alamat: 'darjo'),
    Person(id: 3, name: 'Sam', alamat: 'sarkem'),
    Person(id: 1, name: 'Yesto', alamat: 'pti'),
    Person(id: 2, name: 'Gon', alamat: 'darjo'),
    Person(id: 3, name: 'Sam', alamat: 'sarkem'),
    Person(id: 1, name: 'Yesto', alamat: 'pti'),
    Person(id: 2, name: 'Gon', alamat: 'darjo'),
    Person(id: 3, name: 'Sam', alamat: 'sarkem'),
    Person(id: 1, name: 'Yesto', alamat: 'pti'),
    Person(id: 2, name: 'Gon', alamat: 'darjo'),
    Person(id: 3, name: 'Sam', alamat: 'sarkem'),
    Person(id: 1, name: 'Yesto', alamat: 'pti'),
    Person(id: 2, name: 'Gon', alamat: 'darjo'),
    Person(id: 3, name: 'Sam', alamat: 'sarkem'),
  ];

  @override
  Widget build(BuildContext context) {
    // print(orang.id);
    // print(orang.displayName());
    // print(orang.alamat);
    return Scaffold(
      body: ListView(
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.all(32),
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: listOrang.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(listOrang[index].name,
                            style: TextStyle(fontSize: 24)),
                        Text(listOrang[index].alamat,
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
    );
  }
}
