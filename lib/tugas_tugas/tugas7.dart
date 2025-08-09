import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppkd_b_3/tugas_tugas/login.dart';

class Tugas7 extends StatefulWidget {
  const Tugas7({super.key});

  @override
  State<Tugas7> createState() => _Tugas7State();
}

class _Tugas7State extends State<Tugas7> {
  bool isCheck = false;
  bool gelap = false;
  String? dropdownSelect;
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Utama")),
      drawer: Drawer(),
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value!;
                  });
                },
              ),
              Text(
                isCheck
                    ? "Lanjutkan pendaftaran diperbolehkan"
                    : "Anda belum bisa melanjutkan",
              ),
            ],
          ),
          Text("Mode Gelap"),
          Row(
            children: [
              Switch(
                value: gelap,
                onChanged: (value) {
                  setState(() {
                    gelap = value;
                  });
                },
              ),
            ],
          ),
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
          SizedBox(height: 30),
          Text("Date Picker"),
          ElevatedButton(
            onPressed: () async {
              final DateTime? pickerDate = await showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                lastDate: DateTime(2000),
              );
              if (pickerDate != null) {
                setState(() {});
                selectedDate = pickerDate;
              }
            },
            child: Text("Pilih Tanggal"),
          ),
          SizedBox(height: 10),
          Text(
            selectedDate == null
                ? "Pilih tanggal dulu"
                : DateFormat(
                    'EEEE, dd MMMM yyyy',
                    "id_ID",
                  ).format(selectedDate!),
          ),

          TextButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
            child: Text("Kembali ke login"),
          ),
        ],
      ),
    );
  }
}
