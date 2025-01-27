import 'package:flutter/material.dart';
import 'package:tugas_pokedex/pokemon.dart';

class Moves extends StatelessWidget {
  final List<Pokemon> list;
  final int index;
  const Moves({super.key, required this.list, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
      child: ListView(
        children: [
          Text(
            'Abilities: ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: List.generate(list[index].abilities.length, (iter) {
              return Text(
                '| ${list[index].abilities[iter].ability.name} ',
              );
            }),
          ),
          Text(
            'Moves: ',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 8.0, 
            runSpacing: 8.0, 
            children: List.generate(list[index].moves.length, (iter) {
              return Text(
                '| ${list[index].moves[iter].move.name}',
              );
            }),
          ),
          SizedBox(
            height: 6,
          ),
          
        ],
      ),
    );
  }
}
