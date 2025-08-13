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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFDCC5B2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 15),
              Text("Date Picker", style: TextStyle(fontSize: 25)),
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
      ),
    );
  }
}
