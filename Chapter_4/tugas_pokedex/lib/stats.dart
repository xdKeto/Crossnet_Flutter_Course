import 'package:flutter/material.dart';
import 'package:tugas_pokedex/double_text.dart';
import 'package:tugas_pokedex/pokemon.dart';

class Stats extends StatelessWidget {
  final List<Pokemon> list;
  final int index;
  const Stats({super.key, required this.list, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(list[index].stats.length, (iter) {
          return DoubleText(
              firstText: '${list[index].stats[iter].stat.name.toUpperCase()}: ',
              secondText: list[index].stats[iter].baseStat.toString());
        }),
      ),
    );
  }
}
