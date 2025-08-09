import 'package:flutter/material.dart';

class Syarat extends StatefulWidget {
  const Syarat({super.key});

  @override
  State<Checkbox> createState() => _SyaratState();
}

class _SyaratState extends State<Checkbox> {
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}
