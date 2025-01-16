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
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Container(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 150,
            height: 150,
            child: Image.network(
              'https://media.licdn.com/dms/image/v2/D5603AQHQifZrgiD1ZA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1695726886248?e=1742428800&v=beta&t=1_4mVBZcevgw9TAhUoJ9IF9XGWSGB0yjd8t3SF9VvVk',
              fit: BoxFit.fill,
            ),
          ),
          Image.asset('assets/images/waving.png', fit: BoxFit.cover)
        ],
      ),
    );
  }
}
