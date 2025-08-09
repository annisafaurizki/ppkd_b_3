import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      body: Column(
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
                ? "Pilih tanggal dulu"
                : DateFormat(
                    'EEEE, dd MMMM yyyy',
                    "id_ID",
                  ).format(selectedDate!),
          ),
        ],
      ),
    );
  }
}
