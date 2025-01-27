import 'package:flutter/material.dart';

class TypeBox extends StatelessWidget {
  final String type;
  final Color color;
  final double textSize;
  final bool isDetail;
  const TypeBox(
      {super.key,
      required this.type,
      this.color = Colors.black,
      this.textSize = 10,
      this.isDetail = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      padding: const EdgeInsets.all(4),
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: (isDetail)
            ? Colors.black.withValues(alpha: 0.5)
            : (type == 'grass' || type == 'poison')
                ? Colors.green[200]
                : (type == 'fire' || type == 'flying')
                    ? Colors.red[200]
                    : (type == 'water')
                        ? Colors.blue[200]
                        : Colors.black.withValues(alpha: 0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${type[0].toUpperCase()}${type.substring(1)}",
            style: TextStyle(
                fontSize: textSize,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
