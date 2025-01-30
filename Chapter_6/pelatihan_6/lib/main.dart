import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      builder: EasyLoading.init(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Timer? _timer;

  var namaController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var prayerController = TextEditingController();

  @override
  void initState() {
    super.initState();

    EasyLoading.addStatusCallback((status) {
      print('EasyLoading Status $status');
      if (status == EasyLoadingStatus.dismiss) {
        _timer?.cancel();
      }
    });
    EasyLoading.showSuccess('Use in initState');

    namaController.text = 'John Doe';
    emailController.text = 'johndoe@gmail.com';
    phoneController.text = '08123460265';
    prayerController.text = 'doa doa doa doa doa doa doa doa doa ';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: ListView(
            children: [
              TextFormField(
                // initialValue: namaController.text,
                controller: namaController,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name?",
                ),
                onChanged: (value) {},
              ),
              TextFormField(
                // initialValue: 'johndoe@gmail.com',
                controller: emailController,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Input email",
                ),
                onChanged: (value) {},
              ),
              TextFormField(
                // initialValue: '08123460265',
                controller: phoneController,
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "Phone number?",
                ),
                onChanged: (value) {},
              ),
              TextFormField(
                // initialValue: 'Doa doa doa doa doa doa doa doa doa doa',
                controller: prayerController,
                // maxLength: 20,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Pray Request',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "",
                ),
                onChanged: (value) {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () async {
                  print('pressed');
                  String url =
                      "https://lectio.crossnet.co.id:8080/insertBantuanDoa";

                  await EasyLoading.show(status: 'SABAR YA...');
                  var response = await http.post(Uri.parse(url), headers: {
                    "Accept": "application/json",
                    "Access-Control-Allow-Origin": "*"
                  }, body: {
                    'nama': namaController.text,
                    'email': emailController.text,
                    'notelp': phoneController.text,
                    'isi': prayerController.text,
                  });
                  await EasyLoading.dismiss();
                  if (response.statusCode == 200) {
                    await EasyLoading.showSuccess('Post Success!');
                  }

                  print(response.body);
                  print(response.statusCode);
                  print('after call');
                },
                child: const Text("Post"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
