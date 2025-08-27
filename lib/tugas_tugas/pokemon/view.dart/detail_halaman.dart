import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/pokemon/api.dart/get_pokemon.dart';
import 'package:ppkd_b_3/tugas_tugas/pokemon/model.dart/detail_model.dart';

class DetailPokemon extends StatefulWidget {
  const DetailPokemon({super.key, required this.url});
  final String url;

  @override
  State<DetailPokemon> createState() => _DetailPokemonState();
}

class _DetailPokemonState extends State<DetailPokemon> {
  DetailPoke? data;
  @override
  void initState() {
    loadData();

    super.initState();
  }

  loadData() async {
    final response = await getDetailPokemon(widget.url);
    data = response;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data == null
          ? CircularProgressIndicator()
          : Center(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.blue),

                    child: Image.network(data?.sprites.backDefault ?? ""),
                  ),
                  Text(data?.name ?? ""),
                ],
              ),
            ),
    );
  }
}
