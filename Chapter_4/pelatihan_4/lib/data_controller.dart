// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:pelatihan_4/pokemon.dart';

// class DataController {
//   // Pokemon? dataList;

//   void getDataApi() async {
//     String url = 'https://pokeapi.co/api/v2/pokemon/?limit=100';

//     var response = await http.get(Uri.parse(url));

//     var jsonOBJ = jsonDecode(response.body);
//     // dataList = Pokemon(
//     //     count: jsonOBJ['count'],
//     //     next: jsonOBJ['next'],
//     //     result: jsonOBJ['results']);

//     // print(dataList!.count);
//     // print(dataList!.next);
//     // print(dataList!.result);

//     // var count = jsonOBJ['count'];
//     // List result = jsonOBJ['results'];

//     // print(result);
//     // print(count);
//   }
// }
