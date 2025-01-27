import 'package:flutter/material.dart';

class AppBarr extends StatelessWidget implements PreferredSize {
  const AppBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image(
              image: AssetImage('assets/images/pokeicon.png'),
              width: 30,
              height: 30,
            ),
            Text(
              'Pokedex',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ],
        ),
        backgroundColor: Colors.amber[200],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget get child => throw UnimplementedError();
}
