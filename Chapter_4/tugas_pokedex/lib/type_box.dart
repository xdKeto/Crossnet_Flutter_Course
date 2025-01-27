import 'package:flutter/material.dart';

class TypeBox extends StatelessWidget {
  final String type;
  const TypeBox({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      padding: const EdgeInsets.all(4),
      width: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black.withOpacity(0.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${type[0].toUpperCase()}${type.substring(1)}",
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
