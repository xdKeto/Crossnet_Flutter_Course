import 'dart:convert';

import 'package:flutter/material.dart';
// import 'api.dart' as api;
import 'package:http/http.dart' as http;
import 'package:pelatihan_5/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Product> productList = [];

  Future<void> getProduct() async {
    final responseProduct =
        await http.get(Uri.parse("https://dummyjson.com/products"));
    Map json = jsonDecode(responseProduct.body);
    var data = json['products'];

    for (var i = 0; i < data.length; i++) {
      setState(() {
        productList.add(Product.fromJson(data[i]));
      });
    }

    // print(productList[0].title);
  }

  Future<void> createProduct() async {
    final body = jsonEncode({
      'title' : 'Kursi'
    });
    final response = await http.post(Uri.parse("https://dummyjson.com/products/add"), body: body);

    if (response != null){
      print('Berhasil');
      print(response.body);
    }
  }

  

  @override
  void initState() {
    super.initState();

    getProduct();
    createProduct();
  }

  @override
  Widget build(BuildContext context) {
    // print(productList);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: List.generate(productList.length, (index) {
            // print(productList.length);
            return ListTile(
              title: Text(productList[index].title),
            );
          }),
        ),
      ),
    );
  }
}
