import 'package:flutter/material.dart';

class Icikiwir extends StatefulWidget {
  const Icikiwir({super.key});

  @override
  State<Icikiwir> createState() => _IcikiwirState();
}

class _IcikiwirState extends State<Icikiwir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text(
        'Icikiwir',
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    ));
  }
}
