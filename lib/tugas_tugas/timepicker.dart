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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 158, 205, 236),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 15),
              Text("Pilih Waktu", style: TextStyle(fontSize: 25)),
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
        ),
      ),
    );
  }
}
