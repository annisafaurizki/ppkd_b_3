import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  const Tentang({super.key});

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("About me")),
      body: Column(children: [Container()]),
    );
  }
}
