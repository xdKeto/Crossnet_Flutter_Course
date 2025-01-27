import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugas_pokedex/coba.dart';
import 'package:tugas_pokedex/pic_json.dart';
import 'package:tugas_pokedex/pokemon.dart';
import 'package:tugas_pokedex/tab_barr.dart';

class DetailScreen extends StatelessWidget {
  final List<Pokemon> list;
  final int index;

  const DetailScreen({super.key, required this.list, required this.index});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    late String type = list[index].types.first.type.name;

    return Scaffold(
        backgroundColor: Color(0xffFFFDF0),
        bottomNavigationBar: ConvexButton.fab(
          size: 200,
          iconSize: 40,
          icon: Icons.close,
          color: Colors.white,
          backgroundColor: Colors.red,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    color: (type == 'grass')
                        ? Colors.green[200]
                        : (type == 'fire')
                            ? Colors.red[200]
                            : (type == 'water')
                                ? Colors.blue[200]
                                : Colors.black.withValues(alpha: 0.5),
                  ),
                ),
                Expanded(
                    child: TabBarr(
                  list: list,
                  index: index,
                )),
              ],
            ),
            Positioned(
              top: 90,
              left: 100,
              child: Container(
                padding: EdgeInsets.all(16),
                width: 200,
                height: 200,
                child: Image.asset(
                  picture[index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ));
  }
}
