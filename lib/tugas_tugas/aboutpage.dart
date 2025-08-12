import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  const Tentang({super.key});

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  final String about =
      "Halo! Saya Annisa Faurizki \n"
      "seorang pengembang aplikasi yang saat ini sedang mengembangkan sebuah aplikasi mobile. Meskipun aplikasi ini masih dalam tahap awal, saya sudah menyelesaikan beberapa fitur dasar yang menjadi fondasi penting dari aplikasi ini.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 231, 218),
      appBar: AppBar(title: Text("About me"), centerTitle: true),
      body: Column(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFDCC5B2),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(about, textAlign: TextAlign.justify),
            ),
          ),
        ],
      ),
    );
  }
}
