import 'package:flutter/material.dart';
import 'package:tugas_pokedex/about.dart';
import 'package:tugas_pokedex/moves.dart';
import 'package:tugas_pokedex/pokemon.dart';
import 'package:tugas_pokedex/stats.dart';

class TabBarr extends StatelessWidget {
  final List<Pokemon> list;
  final int index;
  const TabBarr({super.key, required this.list, required this.index});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffFFFDF0),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFDF0),
          automaticallyImplyLeading: false,
          toolbarHeight: 0,
          bottom: TabBar(
            dividerColor: Color(0xffFFFDF0),
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black,
            tabs: <Widget>[
              Tab(
                text: 'About',
              ),
              Tab(
                text: 'Base Stats',
              ),
              Tab(
                text: 'Moves',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            About(list: list, index: index),
            Stats(list: list, index: index),
            Moves(list: list, index: index),
          ],
        ),
      ),
    );
  }
}
