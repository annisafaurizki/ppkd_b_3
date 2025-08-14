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
    getUser();
  }

  final TextEditingController namaController = TextEditingController();
  final TextEditingController wishlistController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();

  Future<void> getUser() async {
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
              SizedBox(height: 10),
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
                  getUser();
                  setState(() {});
                },

                child: Text("Simpan Data"),
              ),
              Divider(),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final dataUserLogin = users[index];
                  return ListTile(
                    title: Text(dataUserLogin.nama),
                    subtitle: Text(dataUserLogin.harga.toString()),
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
