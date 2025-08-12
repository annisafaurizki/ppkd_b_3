import 'package:flutter/material.dart';

class HalamanUtama1 extends StatefulWidget {
  const HalamanUtama1({super.key});

  @override
  State<HalamanUtama1> createState() => _HalamanUtama1State();
}

class _HalamanUtama1State extends State<HalamanUtama1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Color(0xFFD0E8C5)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Halo! Selamat Datang.",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
