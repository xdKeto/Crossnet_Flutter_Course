import 'package:flutter/material.dart';
import 'package:tugas_pokedex/pokemon.dart';

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
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
