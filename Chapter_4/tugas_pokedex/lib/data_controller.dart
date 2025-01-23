import 'package:tugas_pokedex/owned_pokemon.dart';
import 'package:tugas_pokedex/pokemon.dart';

class DataController {
  List<OwnedPokemon>? owned;
  List<Pokemon>? pokemon;

  void fetchOwned() async {
    owned = await OwnedPokemon.fetchData();
  }

  List<OwnedPokemon>? getOwned() {
    return owned;
  }

  void fetchPokemon(String name) async {
    pokemon = await Pokemon.fetchData(name);
  }

  List<Pokemon>? getPokemon() {
    return pokemon;
  }
}
