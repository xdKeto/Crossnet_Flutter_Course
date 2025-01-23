import 'package:flutter/material.dart';
import 'package:tugas_pokedex/app_barr.dart';
import 'package:tugas_pokedex/owned_pokemon.dart';
import 'package:tugas_pokedex/pokemon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? type;
  List<Pokemon>? details;

  // List<OwnedPokemon>? owned;

  // @override
  // void initState() {
  //   super.initState();

  //   fetch();
  // }

  // void fetch() async {
  //   owned = await OwnedPokemon.fetchData();
  // }

  // void printNama() {
  //   print(owned?[0].name);
  // }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBarr(),
          body: SingleChildScrollView(
            child: ,
          )
        ));
  }
}
