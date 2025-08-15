import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_10/textfrom.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_11/db_helper.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_11/user.dart';

class WishlistBelanja extends StatefulWidget {
  const WishlistBelanja({super.key});
  static const nama = "/user";
  @override
  State<WishlistBelanja> createState() => _WishlistBelanjaState();
}

class _WishlistBelanjaState extends State<WishlistBelanja> {
  List<Belanjaan> users = [];
  @override
  void initState() {
    super.initState();
    getBelanja();
  }

  final TextEditingController namaController = TextEditingController();
  final TextEditingController wishlistController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();

  Future<void> getBelanja() async {
    final dataBelanja = await DbHelper.getAllBelanjaan();
    print(dataBelanja);
    setState(() {
      users = dataBelanja;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              TextFormConst(
                hintText: "Nama Barang",
                controller: namaController,
              ),
              TextFormConst(
                hintText: "Kategori",
                controller: wishlistController,
              ),
              TextFormConst(hintText: "Harga", controller: hargaController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final nama = namaController.text.trim();
                  final wishlist = wishlistController.text.trim();
                  final harga = hargaController.text.trim();
                  if (nama.isEmpty || wishlist.isEmpty || harga.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Kolom harus diisi")),
                    );

                    return;
                  }
                  final user = Belanjaan(
                    nama: nama,
                    wishlist: wishlist,
                    harga: int.parse(harga),
                  );
                  await DbHelper.registeraBelanjaan(user);
                  Future.delayed(const Duration(seconds: 1)).then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Barang berhasil ditambahkan"),
                      ),
                    );
                  });
                  getBelanja();
                  setState(() {});

                  namaController.clear();
                  wishlistController.clear();
                  hargaController.clear();
                },

                child: Text("Simpan Data"),
              ),
              Divider(),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final dataBelanja = users[index];
                  return ListTile(
                    title: Text(dataBelanja.nama),
                    subtitle: Text(dataBelanja.harga.toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Edit Data'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormConst(
                                      controller: namaController
                                        ..text = dataBelanja.nama,
                                      hintText: 'Nama Barang',
                                    ),
                                    SizedBox(height: 12),
                                    TextFormConst(
                                      controller: wishlistController
                                        ..text = dataBelanja.wishlist,
                                      hintText: 'Jenis Barang',
                                    ),
                                    SizedBox(height: 12),

                                    TextFormConst(
                                      controller: hargaController
                                        ..text = dataBelanja.harga.toString(),
                                      hintText: 'Harga',
                                    ),
                                  ],
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () async {
                                      final dataUser = Belanjaan(
                                        id: dataBelanja.id!,
                                        nama: namaController.text,
                                        wishlist: wishlistController.text,
                                        harga: int.parse(
                                          hargaController.text.trim(),
                                        ),
                                      );
                                      await DbHelper.updateBelanjaan(dataUser);
                                      await getBelanja();
                                      Navigator.pop(context);
                                    },
                                    child: Text('Simpan'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Batal'),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () async {
                            print(dataBelanja.id);
                            DbHelper.deleteBelanjaan(dataBelanja.id!);
                            await getBelanja();
                          },
                          icon: Icon(Icons.delete),
                        ),

                        // IconButton(
                        //   onPressed: () {
                        //     showDialog(
                        //       context: context,
                        //       builder: (context) => AlertDialog(
                        //         title: Text("edit data"),
                        //         content: Column(
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             TextFormConst(
                        //               controller: namaController
                        //                 ..text = dataBelanja.nama,
                        //               hintText: 'nama barang',
                        //             ),
                        //             SizedBox(height: 12),

                        //             TextFormConst(
                        //               controller: wishlistController
                        //                 ..text = dataUserLogin.wishlist,
                        //               hintText: 'Kategori',
                        //             ),
                        //             SizedBox(height: 12),

                        //             TextFormConst(
                        //               controller: hargaController
                        //                 ..text = dataUserLogin.harga as String,
                        //               hintText: 'Harga',
                        //             ),
                        //           ],
                        //         ),
                        //         actions: [
                        //           ElevatedButton(
                        //             onPressed: () {
                        //               final dataBelanjaan = Belanjaan(
                        //                 id: dataUserLogin.id,
                        //                 nama: namaController.text.trim(),
                        //                 wishlist: wishlistController.text,
                        //                 harga: int.parse(hargaco)

                        //                 );
                        //             DbHelper.updateBelanjaan(Belanjaan as Belanjaan);
                        //             getBelanja();
                        //             Navigator.pop(context);
                        //             },

                        //             child:Text('simpan'),
                        //           ),
                        //           ElevatedButton(onPressed: () => Navigator.pop(context),
                        //           child: Text('Batal'))
                        //         ],
                        //       ),
                        //     );
                        //   },
                        //   icon: Icon(Icons.edit)
                        // ),
                        // IconButton(onPressed: (){
                        //   DbHelper.deleteBelanjaan(dataUserLogin.id!);
                        //   getUser();
                        // },
                        // icon: Icon(Icons.delete))
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
