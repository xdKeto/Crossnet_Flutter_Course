import 'dart:convert';

import 'package:http/http.dart' as http;

class Pokemon {
  final String name;
  final String url;

  Pokemon({required this.name, required this.url});

  // Factory constructor to create a Pokemon object from a JSON map
  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
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

  static Future<List<Pokemon>> fetchData() async {
    String url = 'https://pokeapi.co/api/v2/pokemon/?limit=100';
    var response = await http.get(Uri.parse(url));

    var jsonOBJ = jsonDecode(response.body);
    var data = jsonOBJ['results'];
    List<Pokemon> pokes = [];

    for (var i = 0; i < data.length; i++) {
      pokes.add(Pokemon.fromJson(data[i]));
    }

    return pokes;
  }
}
