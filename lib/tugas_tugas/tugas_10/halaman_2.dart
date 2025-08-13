import 'package:flutter/material.dart';

class Halaman2 extends StatelessWidget {
  const Halaman2({super.key, required this.nama, required this.domisili});
  final String nama;
  final String domisili;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Terima kasih, $nama dari $domisili telah mendaftar",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
