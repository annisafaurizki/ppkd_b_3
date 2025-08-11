import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ppkd_b_3/tugas_tugas/halaman_utama.dart';

class Tanggal extends StatefulWidget {
  const Tanggal({super.key});

  @override
  State<Tanggal> createState() => _TanggalState();
}

class _TanggalState extends State<Tanggal> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pilih Tanggal")),
      drawer: FirstPage(),
      body: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 199, 222, 241),
        ),
        child: Column(
          children: [
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
                  ? "Silahkan Pilih Tanggal"
                  : DateFormat(
                      'EEEE, dd MMMM yyyy',
                      "id_ID",
                    ).format(selectedDate!),
            ),
          ],
        ),
      ),
    );
  }
}
