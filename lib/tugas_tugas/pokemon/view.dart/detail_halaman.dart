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
      backgroundColor: const Color.fromARGB(255, 248, 90, 78),
      appBar: AppBar(title: Text("Profile"), centerTitle: true),
      body: SingleChildScrollView(
        child: data == null
            ? CircularProgressIndicator()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.network(
                      data?.sprites.frontDefault ?? "",
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      data?.name ?? "",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 252, 253, 253),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ID",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("${data?.id ?? 0}"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(data?.name ?? ""),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Height",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("${data?.height ?? 0}"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("${data?.weight ?? 0}"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Species",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(data?.species.name ?? ""),
                              ],
                            ),
                            SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Base Experience",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("${data?.baseExperience ?? 0}"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Kemampuan",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                            SizedBox(height: 20),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: data?.stats.length ?? 0,
                              itemBuilder: (BuildContext context, int index) {
                                final stat = data!.stats[index];
                                return Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      stat.stat.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text(
                                      stat.baseStat.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
