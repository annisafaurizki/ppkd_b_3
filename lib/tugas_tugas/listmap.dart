import 'package:flutter/material.dart';

class ListM extends StatefulWidget {
  const ListM({super.key});

  @override
  State<ListM> createState() => _ListMState();
}

class _ListMState extends State<ListM> {
  final List<Map<String, dynamic>> produk = [
    {"barang": "Laptop", "price": 50000, "icon": Icon(Icons.laptop)},
    {"barang": "Mouse", "price": 15000, "icon": Icon(Icons.mouse)},
    {"barang": "Keyboard", "price": 30000, "icon": Icon(Icons.keyboard)},
    {"barang": "CPU", "price": 100000, "icon": Icon(Icons.computer_sharp)},
    {"barang": "Monitor", "price": 80000, "icon": Icon(Icons.monitor)},
    {"barang": "Handphone", "price": 400000, "icon": Icon(Icons.smartphone)},
    {"barang": "AC", "price": 30000, "icon": Icon(Icons.ac_unit)},
    {"barang": "Lampu", "price": 5000, "icon": Icon(Icons.light)},
    {"barang": "Stop Kontak", "price": 3000, "icon": Icon(Icons.power)},
    {"barang": "Headphone", "price": 20000, "icon": Icon(Icons.headphones)},
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
              itemCount: produk.length,
              itemBuilder: (BuildContext context, int index) {
                final dataProduk = produk[index];
                return ListTile(
                  title: Text(dataProduk["barang"]),
                  subtitle: Text(dataProduk["price"].toString()),
                  trailing: CircleAvatar(child: dataProduk["icon"]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
