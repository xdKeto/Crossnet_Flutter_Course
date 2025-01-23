import 'dart:convert';

import 'package:http/http.dart' as http;

class OwnedPokemon {
  final String name;
  final String url;

  OwnedPokemon({required this.name, required this.url});

  // Factory constructor to create a Pokemon object from a JSON map
  factory OwnedPokemon.fromJson(Map<String, dynamic> json) {
    return OwnedPokemon(
      name: json['name'],
      url: json['url'],
    );
  }

  // Method to convert a Pokemon object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }

  static Future<List<OwnedPokemon>> fetchData() async {
    String url = 'https://pokeapi.co/api/v2/pokemon/?limit=9';
    var response = await http.get(Uri.parse(url));

    var obj = jsonDecode(response.body);
    var data = obj['results'];
    List<OwnedPokemon> list = [];

    for (var i = 0; i < data.length; i++) {
      list.add(OwnedPokemon.fromJson(data[i]));
    }

    return list;  
  }
}
