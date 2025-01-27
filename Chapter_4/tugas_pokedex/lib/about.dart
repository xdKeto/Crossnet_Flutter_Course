import 'package:flutter/material.dart';
import 'package:tugas_pokedex/double_text.dart';
import 'package:tugas_pokedex/pokemon.dart';
import 'package:tugas_pokedex/type_box.dart';

class About extends StatelessWidget {
  final List<Pokemon> list;
  final int index;
  const About({super.key, required this.list, required this.index});

  // types, weight
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Type: ',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: List.generate(list[index].types.length, (iter) {
                return TypeBox(
                  type: list[index].types[iter].type.name,
                  isDetail: false,
                );
              }),
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        DoubleText(
            firstText: 'Height: ', secondText: list[index].height.toString()),
        SizedBox(
          height: 6,
        ),
        DoubleText(
            firstText: 'Weight: ', secondText: list[index].weight.toString()),
      ]),
    );
  }
}
