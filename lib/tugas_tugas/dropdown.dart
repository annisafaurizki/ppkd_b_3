import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/halaman_utama.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? dropdownSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dropdown")),
      drawer: FirstPage(),
      body: Column(
        children: [
          Text("dropdownbutton"),
          DropdownButton(
            value: dropdownSelect,
            hint: Text("Pilih Produk"),
            items: ["Elektronik", "Makanan", "Pakaian", "Lainnya"].map((
              String value,
            ) {
              return DropdownMenuItem(value: value, child: Text(value));
            }).toList(),
            onChanged: (value) {
              setState(() {});
              dropdownSelect = value;
            },
          ),
        ],
      ),
    );
  }
}
