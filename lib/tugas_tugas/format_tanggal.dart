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
      backgroundColor: Color(0xFFF0E4D3),

      body: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFDCC5B2),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
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
