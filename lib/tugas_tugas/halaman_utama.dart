import 'package:flutter/material.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas_tugas/bottomnav.dart';
import 'package:ppkd_b_3/tugas_tugas/checkbox.dart';
import 'package:ppkd_b_3/tugas_tugas/dropdown.dart';
import 'package:ppkd_b_3/tugas_tugas/format_tanggal.dart';
import 'package:ppkd_b_3/tugas_tugas/head_model.dart';
import 'package:ppkd_b_3/tugas_tugas/listmap.dart';
import 'package:ppkd_b_3/tugas_tugas/listview.dart';
import 'package:ppkd_b_3/tugas_tugas/mode_gelap.dart';
import 'package:ppkd_b_3/tugas_tugas/timepicker.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_10/halaman_1.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_11/user_screen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndexDrawer = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Pertama(),
    MySyarat(),
    ModeGelap(),
    Dropdown(),
    Tanggal(),
    Waktu(),
    ListV(),
    ListM(),
    Model(),
    WishlistBelanja(),
    MainScreen(),
  ];

  static const List<String> _title = [
    "Form Daftar",
    "Syarat dan Ketentuan",
    "Mode Gelap",
    "Dropdown",
    "Format Tanggal",
    "Format Waktu",
    "ListView",
    "ListMap",
    "Model Produk",
    "WishList",
  ];
  void onItemTap(int index) {
    setState(() {
      _selectedIndexDrawer = index;
    });
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCCFC0),
      appBar: AppBar(
        centerTitle: true,
        title: Text(_title[_selectedIndexDrawer]),
        backgroundColor: Color(0xFFF6D6D6),
      ),
      body: Center(child: _widgetOptions[_selectedIndexDrawer]),
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
            // ListTile(
            //   title: Text("Halaman Utama"),
            //   leading: Icon(Icons.dashboard),
            //   onTap: () {
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => const MySyarat()),
            //     // );.
            //     onItemTap(0);
            //   },
            // ),
            ListTile(
              title: Text("Pendaftaran"),
              leading: Icon(Icons.account_box),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const MySyarat()),
                // );.
                onItemTap(0);
              },
            ),
            ListTile(
              title: Text("Syarat dan Ketentuan"),
              leading: Icon(Icons.edit_attributes),
              onTap: () {
                onItemTap(1);
              },
            ),
            ListTile(
              title: Text("Mode Gelap"),
              leading: Icon(Icons.dark_mode_outlined),
              onTap: () {
                onItemTap(2);
              },
            ),
            ListTile(
              title: Text("Dropdown"),
              leading: Icon(Icons.arrow_drop_down_circle),
              onTap: () {
                onItemTap(3);
              },
            ),
            ListTile(
              title: Text("Format Tanggal"),
              leading: Icon(Icons.calendar_month),
              onTap: () {
                onItemTap(4);
              },
            ),
            ListTile(
              title: Text("Format Waktu"),
              leading: Icon(Icons.timelapse),
              onTap: () {
                onItemTap(5);
              },
            ),
            ListTile(
              title: Text("ListView"),
              leading: Icon(Icons.view_agenda),
              onTap: () {
                onItemTap(6);
              },
            ),
            ListTile(
              title: Text("ListMap"),
              leading: Icon(Icons.list),
              onTap: () {
                onItemTap(7);
              },
            ),
            ListTile(
              title: Text("Model Produk"),
              leading: Icon(Icons.connect_without_contact),
              onTap: () {
                onItemTap(8);
              },
            ),
            ListTile(
              title: Text("WishList"),
              leading: Icon(Icons.favorite),
              onTap: () {
                onItemTap(9);
              },
            ),
          ],
        ),
      ),

      // body: Column(
      //   children: [
      //     Container(
      //       height: 200,
      //       width: double.maxFinite,
      //       decoration: BoxDecoration(color: Color(0xFFD0E8C5)),
      //       child: Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: Text(
      //           "Halo! Selamat Datang.",
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
