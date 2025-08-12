import 'package:flutter/material.dart';

class Waktu extends StatefulWidget {
  const Waktu({super.key});

  @override
  State<Waktu> createState() => _WaktuState();
}

class _WaktuState extends State<Waktu> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pilih Waktu")),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("Pilih Waktu"),
            onPressed: () async {
              final TimeOfDay? pickerDate = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (pickerDate != null) {
                setState(() {});
                selectedTime = pickerDate;
              }
            },
          ),
          Text(
            selectedTime == null
                ? "Pilih jam dulu"
                : "${selectedTime!.hour.toString()} : ${selectedTime!.minute.toString()}",
          ),
        ],
      ),
    );
  }
}
