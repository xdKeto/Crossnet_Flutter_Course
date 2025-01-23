import 'dart:convert';

import 'package:http/http.dart' as http;

class Berry {
  final Firmness firmness;
  final List<Flavor> flavors;
  final int growthTime;
  final int id;
  final Item item;
  final int maxHarvest;
  final String name;
  final int naturalGiftPower;
  final NaturalGiftType naturalGiftType;
  final int size;
  final int smoothness;
  final int soilDryness;

  Berry({
    required this.firmness,
    required this.flavors,
    required this.growthTime,
    required this.id,
    required this.item,
    required this.maxHarvest,
    required this.name,
    required this.naturalGiftPower,
    required this.naturalGiftType,
    required this.size,
    required this.smoothness,
    required this.soilDryness,
  });

  factory Berry.fromJson(Map<String, dynamic> json) {
    return Berry(
      firmness: Firmness.fromJson(json['firmness']),
      flavors: (json['flavors'] as List)
          .map((flavor) => Flavor.fromJson(flavor))
          .toList(),
      growthTime: json['growth_time'],
      id: json['id'],
      item: Item.fromJson(json['item']),
      maxHarvest: json['max_harvest'],
      name: json['name'],
      naturalGiftPower: json['natural_gift_power'],
      naturalGiftType: NaturalGiftType.fromJson(json['natural_gift_type']),
      size: json['size'],
      smoothness: json['smoothness'],
      soilDryness: json['soil_dryness'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firmness': firmness.toJson(),
      'flavors': flavors.map((flavor) => flavor.toJson()).toList(),
      'growth_time': growthTime,
      'id': id,
      'item': item.toJson(),
      'max_harvest': maxHarvest,
      'name': name,
      'natural_gift_power': naturalGiftPower,
      'natural_gift_type': naturalGiftType.toJson(),
      'size': size,
      'smoothness': smoothness,
      'soil_dryness': soilDryness,
    };
  }

  static Future<Berry> fetchData() async {
    String url = 'https://pokeapi.co/api/v2/berry/1';
    var response = await http.get(Uri.parse(url));

    var jsonOBJ = jsonDecode(response.body);
    Berry berries = Berry.fromJson(jsonOBJ) ;

    return berries;
  }
}

class Firmness {
  final String name;
  final String url;

  Firmness({required this.name, required this.url});

  factory Firmness.fromJson(Map<String, dynamic> json) {
    return Firmness(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

class Flavor {
  final FlavorDetail flavor;
  final int potency;

  Flavor({required this.flavor, required this.potency});

  factory Flavor.fromJson(Map<String, dynamic> json) {
    return Flavor(
      flavor: FlavorDetail.fromJson(json['flavor']),
      potency: json['potency'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'flavor': flavor.toJson(),
      'potency': potency,
    };
  }
}

class FlavorDetail {
  final String name;
  final String url;

  FlavorDetail({required this.name, required this.url});

  factory FlavorDetail.fromJson(Map<String, dynamic> json) {
    return FlavorDetail(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}

class NaturalGiftType {
  final String name;
  final String url;

  NaturalGiftType({required this.name, required this.url});

  factory NaturalGiftType.fromJson(Map<String, dynamic> json) {
    return NaturalGiftType(
      name: json['name'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }
}
