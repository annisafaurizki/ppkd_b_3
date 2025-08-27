import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas_tugas/pokemon/api.dart/get_pokemon.dart';
import 'package:ppkd_b_3/tugas_tugas/pokemon/model.dart/detail_model.dart';
import 'package:ppkd_b_3/tugas_tugas/pokemon/model.dart/model_pokemon.dart';
import 'package:ppkd_b_3/tugas_tugas/pokemon/view.dart/detail_halaman.dart';

class Pokemon23Get extends StatefulWidget {
  const Pokemon23Get({super.key});
  static const id = 'get_pokemon_api.';

  @override
  State<Pokemon23Get> createState() => _Pokemon23GetState();
}

class _Pokemon23GetState extends State<Pokemon23Get> {
  DetailPoke? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 215, 111),
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logotulisan.png",
          fit: BoxFit.cover,
          height: 50,
        ),

        centerTitle: true,

        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: getPokemon(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else if (snapshot.hasData) {
                    final Pokemon = snapshot.data as List<ModelPokemon>;
                    print(Pokemon);
                    return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: Pokemon.length,
                      itemBuilder: (BuildContext context, int index) {
                        final dataPokemon = Pokemon[index];
                        return Card(
                          child: ListTile(
                            onTap: () {
                              context.push(DetailPokemon(url: dataPokemon.url));
                            },
                            // leading: dataPokemon.url == ""
                            //     ? SizedBox()
                            //     : Image.network(dataPokemon.url ?? ""),
                            title: Text(dataPokemon.name),

                            trailing: Text(data?.sprites.frontDefault ?? ""),
                          ),
                        );
                      },
                    );
                  } else {
                    return Text("Gagal Memuat Data");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
