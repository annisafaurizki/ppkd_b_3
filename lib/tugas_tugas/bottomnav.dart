import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/aboutpage.dart';
import 'package:ppkd_b_3/tugas_tugas/halaman_utama.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static const id = "/main";
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[FirstPage(), Tentang()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),

      // endDrawer: Drawer(child: Column(children: [])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // activeIcon: Icon(Icons.abc_outlined),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.details), label: 'Tentang'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          print(value);
          print("Nilai SelecetedIndex Before : $_selectedIndex");

          print("Nilai BotNav : $value");
          setState(() {
            _selectedIndex = value;
          });
          print("Nilai SelecetedIndex After: $_selectedIndex");
        },
        // onTap: _onItemTapped,
      ),
    );
  }
}
