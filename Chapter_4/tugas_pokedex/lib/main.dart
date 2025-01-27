import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tugas_pokedex/app_barr.dart';
import 'package:tugas_pokedex/container_poke.dart';
import 'package:tugas_pokedex/detail_screen.dart';
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
  // String? type;
  List<OwnedPokemon> owned = [];
  List<Pokemon> details = [];

  @override
  void initState() {
    super.initState();

    OwnedPokemon.fetchData().then((value) {
      setState(() {
        owned = value;
      });

      Future.wait(
              owned.map((ownedPokemon) => Pokemon.fetchData(ownedPokemon.url)))
          .then((fetchedDetails) {
        setState(() {
          details = fetchedDetails;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Color(0xffFFFDF0), ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xffFFFDF0),
            appBar: AppBarr(),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: owned.isEmpty || details.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Colors.amber[200],
                      ),
                    )
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 4 / 5,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16),
                      itemCount: owned.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            showMaterialModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) => Container(
                                    width: screenWidth,
                                    height: screenHeight * 0.75,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                        color: Colors.white),
                                    child: DetailScreen(
                                      list: details,
                                      index: index,
                                    )));
                          },
                          child: ContainerPoke(
                              name: owned[index].name,
                              types: details[index].types,
                              index: index),
                        );
                      }),
            )));
  }
}
