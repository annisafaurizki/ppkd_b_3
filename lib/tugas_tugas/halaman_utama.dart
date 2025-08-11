import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/checkbox.dart';
import 'package:ppkd_b_3/tugas_tugas/dropdown.dart';
import 'package:ppkd_b_3/tugas_tugas/format_tanggal.dart';
import 'package:ppkd_b_3/tugas_tugas/mode_gelap.dart';
import 'package:ppkd_b_3/tugas_tugas/timepicker.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCCFC0),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Halaman Utama"),
        backgroundColor: Color(0xFFF6D6D6),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 192, 227, 250),
              ),
              child: Text("Hi! Annisa Faurizki"),
            ),
            SizedBox(),
            ListTile(
              title: Text("Syarat dan Ketentuan"),
              leading: Icon(Icons.edit_attributes),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MySyarat()),
                );
              },
            ),
            ListTile(
              title: Text("Mode Gelap"),
              leading: Icon(Icons.dark_mode_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ModeGelap()),
                );
              },
            ),
            ListTile(
              title: Text("Dropdown"),
              leading: Icon(Icons.arrow_drop_down_circle),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dropdown()),
                );
              },
            ),
            ListTile(
              title: Text("Format Tanggal"),
              leading: Icon(Icons.calendar_month),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tanggal()),
                );
              },
            ),
            ListTile(
              title: Text("Format Waktu"),
              leading: Icon(Icons.timelapse),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Waktu()),
                );
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: MainScreen(),
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
