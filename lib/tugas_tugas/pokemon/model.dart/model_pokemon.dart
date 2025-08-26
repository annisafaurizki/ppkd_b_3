// To parse this JSON data, do
//
//     final Pokemon = PokemonFromJson(jsonString);

import 'dart:convert';

Pokemon PokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

String PokemonToJson(Pokemon data) => json.encode(data.toJson());

class Pokemon {
  int count;
  String next;
  dynamic previous;
  List<ModelPokemon> results;

  Pokemon({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: List<ModelPokemon>.from(
      json["results"].map((x) => ModelPokemon.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "next": next,
    "previous": previous,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class ModelPokemon {
  String name;
  String url;

  ModelPokemon({required this.name, required this.url});

  factory ModelPokemon.fromJson(Map<String, dynamic> json) =>
      ModelPokemon(name: json["name"], url: json["url"]);

  Map<String, dynamic> toJson() => {"name": name, "url": url};
}
