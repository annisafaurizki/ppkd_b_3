import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/produk_model.dart';

class Model extends StatefulWidget {
  const Model({super.key});

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  final List<ProdukElektronik> produkElektronik = [
    ProdukElektronik(
      nama: "Laptop",
      price: 50000,
      warna: const Color.fromARGB(255, 222, 234, 243),
    ),
    ProdukElektronik(
      nama: "Mouse",
      price: 50000,
      warna: const Color.fromARGB(255, 230, 207, 245),
    ),
    ProdukElektronik(nama: "Keyboard", price: 50000, warna: Colors.blue),
    ProdukElektronik(
      nama: "CPU",
      price: 50000,
      warna: const Color.fromARGB(255, 202, 241, 230),
    ),
    ProdukElektronik(
      nama: "Monitor",
      price: 50000,
      warna: const Color.fromARGB(255, 245, 243, 222),
    ),
    ProdukElektronik(
      nama: "Handphone",
      price: 50000,
      warna: const Color.fromARGB(255, 247, 203, 233),
    ),
    ProdukElektronik(
      nama: "AC",
      price: 50000,
      warna: const Color.fromARGB(255, 253, 251, 227),
    ),
    ProdukElektronik(
      nama: "Lampu",
      price: 50000,
      warna: const Color.fromARGB(255, 229, 247, 196),
    ),
    ProdukElektronik(
      nama: "Stop Kontak",
      price: 50000,
      warna: const Color.fromARGB(255, 228, 211, 247),
    ),
    ProdukElektronik(
      nama: "Headphone",
      price: 50000,
      warna: const Color.fromARGB(255, 195, 190, 238),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: produkElektronik.length,
              itemBuilder: (BuildContext context, int index) {
                final dataProdukElektronik = produkElektronik[index];
                return ListTile(
                  title: Text(dataProdukElektronik.nama),
                  subtitle: Text(dataProdukElektronik.price.toString()),
                  trailing: CircleAvatar(
                    backgroundColor: dataProdukElektronik.warna,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 238, 228, 247),
                    child: Text("${index + 1}"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
