import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/aboutpage.dart';
import 'package:ppkd_b_3/tugas_tugas/halaman_utama.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int _selectedIndex = 0;
  static const List<Widget> _wigdetOptions = <Widget>[FirstPage(), Tentang()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _wigdetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.details), label: "Tentang"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 74, 90, 231),
        onTap: (value) {
          print(value);
          print("Nilai SelectedIndex Before : $_selectedIndex");

          print("Nilai BotNav : $value");
          setState(() {
            _selectedIndex = value;
          });
          print("Nilai SelectedIndex After: $_selectedIndex");
        },
      ),
    );
  }
}
