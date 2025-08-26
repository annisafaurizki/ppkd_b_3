import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ppkd_b_3/tugas_tugas/pokemon/model.dart/detail_model.dart';
import 'package:ppkd_b_3/tugas_tugas/pokemon/model.dart/model_pokemon.dart';

Future<List<ModelPokemon>> getPokemon() async {
  final response = await http.get(
    Uri.parse("https://pokeapi.co/api/v2/pokemon"),
  );
  print(response.body);
  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body)["results"];
    return userJson.map((json) => ModelPokemon.fromJson(json)).toList();
  } else {
    throw Exception("Gagal memuat data");
  }
}

Future<DetailPoke> getDetailPokemon(String url) async {
  final response = await http.get(Uri.parse(url));
  print(response.body);
  if (response.statusCode == 200) {
    return DetailPoke.fromJson(json.decode(response.body));
  } else {
    throw Exception("Gagal memuat data");
  }
}
