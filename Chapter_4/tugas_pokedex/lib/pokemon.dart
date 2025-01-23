import 'dart:convert';

import 'package:http/http.dart' as http;

class Pokemon {
  final int id;
  final String name;
  final int baseExperience;
  final int height;
  final bool isDefault;
  final int order;
  final int weight;
  final List<Ability> abilities;
  final List<Form> forms;
  final List<GameIndex> gameIndices;
  final List<HeldItem> heldItems;
  final String locationAreaEncounters;
  final List<Move> moves;
  final Species species;
  final List<Stat> stats;
  final List<Type> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
    required this.abilities,
    required this.forms,
    required this.gameIndices,
    required this.heldItems,
    required this.locationAreaEncounters,
    required this.moves,
    required this.species,
    required this.stats,
    required this.types,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      id: json['id'],
      name: json['name'],
      baseExperience: json['base_experience'],
      height: json['height'],
      isDefault: json['is_default'],
      order: json['order'],
      weight: json['weight'],
      abilities: (json['abilities'] as List)
          .map((item) => Ability.fromJson(item))
          .toList(),
      forms:
          (json['forms'] as List).map((item) => Form.fromJson(item)).toList(),
      gameIndices: (json['game_indices'] as List)
          .map((item) => GameIndex.fromJson(item))
          .toList(),
      heldItems: (json['held_items'] as List)
          .map((item) => HeldItem.fromJson(item))
          .toList(),
      locationAreaEncounters: json['location_area_encounters'],
      moves:
          (json['moves'] as List).map((item) => Move.fromJson(item)).toList(),
      species: Species.fromJson(json['species']),
      stats:
          (json['stats'] as List).map((item) => Stat.fromJson(item)).toList(),
      types:
          (json['types'] as List).map((item) => Type.fromJson(item)).toList(),
    );
  }

  static Future<List<Pokemon>> fetchData(String name) async {
    String url = 'https://pokeapi.co/api/v2/pokemon/$name';
    var response = await http.get(Uri.parse(url));

    var obj = jsonDecode(response.body);
    var data = obj['results'];
    List<Pokemon> list = [];

    for (var i = 0; i < data.length; i++) {
      list.add(Pokemon.fromJson(data[i]));
    }

    return list;
  }
}

class Ability {
  final bool isHidden;
  final int slot;
  final AbilityInfo ability;

  Ability({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  factory Ability.fromJson(Map<String, dynamic> json) {
    return Ability(
      isHidden: json['is_hidden'],
      slot: json['slot'],
      ability: AbilityInfo.fromJson(json['ability']),
    );
  }
}

class AbilityInfo {
  final String name;
  final String url;

  AbilityInfo({required this.name, required this.url});

  factory AbilityInfo.fromJson(Map<String, dynamic> json) {
    return AbilityInfo(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Form {
  final String name;
  final String url;

  Form({required this.name, required this.url});

  factory Form.fromJson(Map<String, dynamic> json) {
    return Form(
      name: json['name'],
      url: json['url'],
    );
  }
}

class GameIndex {
  final int gameIndex;
  final Version version;

  GameIndex({required this.gameIndex, required this.version});

  factory GameIndex.fromJson(Map<String, dynamic> json) {
    return GameIndex(
      gameIndex: json['game_index'],
      version: Version.fromJson(json['version']),
    );
  }
}

class Version {
  final String name;
  final String url;

  Version({required this.name, required this.url});

  factory Version.fromJson(Map<String, dynamic> json) {
    return Version(
      name: json['name'],
      url: json['url'],
    );
  }
}

class HeldItem {
  final Item item;

  HeldItem({required this.item});

  factory HeldItem.fromJson(Map<String, dynamic> json) {
    return HeldItem(
      item: Item.fromJson(json['item']),
    );
  }
}

class Item {
  final String name;
  final String url;

  Item({required this.name, required this.url});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Move {
  final MoveInfo move;

  Move({required this.move});

  factory Move.fromJson(Map<String, dynamic> json) {
    return Move(
      move: MoveInfo.fromJson(json['move']),
    );
  }
}

class MoveInfo {
  final String name;
  final String url;

  MoveInfo({required this.name, required this.url});

  factory MoveInfo.fromJson(Map<String, dynamic> json) {
    return MoveInfo(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Species {
  final String name;
  final String url;

  Species({required this.name, required this.url});

  factory Species.fromJson(Map<String, dynamic> json) {
    return Species(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Stat {
  final int baseStat;
  final int effort;
  final StatInfo stat;

  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory Stat.fromJson(Map<String, dynamic> json) {
    return Stat(
      baseStat: json['base_stat'],
      effort: json['effort'],
      stat: StatInfo.fromJson(json['stat']),
    );
  }
}

class StatInfo {
  final String name;
  final String url;

  StatInfo({required this.name, required this.url});

  factory StatInfo.fromJson(Map<String, dynamic> json) {
    return StatInfo(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Type {
  final int slot;
  final TypeInfo type;

  Type({required this.slot, required this.type});

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      slot: json['slot'],
      type: TypeInfo.fromJson(json['type']),
    );
  }
}

class TypeInfo {
  final String name;
  final String url;

  TypeInfo({required this.name, required this.url});

  factory TypeInfo.fromJson(Map<String, dynamic> json) {
    return TypeInfo(
      name: json['name'],
      url: json['url'],
    );
  }
}
