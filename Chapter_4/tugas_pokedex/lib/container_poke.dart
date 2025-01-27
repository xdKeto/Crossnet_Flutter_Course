import 'package:flutter/material.dart';
import 'package:tugas_pokedex/pic_json.dart';
import 'package:tugas_pokedex/pokemon.dart';
import 'package:tugas_pokedex/type_box.dart';

class ContainerPoke extends StatefulWidget {
  final String name;
  final List<Type> types;
  final int index;
  const ContainerPoke(
      {super.key,
      required this.name,
      required this.types,
      required this.index});

  @override
  State<ContainerPoke> createState() => _ContainerpokeState();
}

class _ContainerpokeState extends State<ContainerPoke> {
  late String type;

  @override
  void initState() {
    type = widget.types.first.type.name;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: (type == 'grass')
              ? Colors.green[200]
              : (type == 'fire')
                  ? Colors.red[200]
                  : (type == 'water')
                      ? Colors.blue[200]
                      : Colors.black.withValues(alpha: 0.5),
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 4,
                right: 8,
                child: Text(
                  widget.name.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Center(
                  child: Image.asset(picture[widget.index], fit: BoxFit.cover)),
            ),
            Positioned(
                child: Row(
              children: List.generate(widget.types.length, (index) {
                return TypeBox(type: widget.types[index].type.name);
              }),
            ))
          ],
        )

        // Column(
        //   children: [
        //     Text(widget.name),
        //     Row(
        //       children: List.generate(widget.types.length, (index) {
        //         return Text(widget.types[index].type.name);
        //       }),
        //     )
        //   ],
        // ),
        );
  }
}
