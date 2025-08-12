import 'package:flutter/material.dart';

class ModeGelap extends StatefulWidget {
  const ModeGelap({super.key});

  @override
  State<ModeGelap> createState() => _ModeGelapState();
}

class _ModeGelapState extends State<ModeGelap> {
  bool gelap = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gelap
          ? const Color.fromARGB(255, 250, 246, 246)
          : const Color.fromARGB(255, 141, 140, 140),

      // drawer: FirstPage(),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Hidupkan Mode Gelap",
              style: TextStyle(
                color: gelap
                    ? const Color.fromARGB(255, 12, 12, 12)
                    : const Color.fromARGB(255, 248, 243, 243),
              ),
            ),
            Row(
              children: [
                Switch(
                  activeColor: const Color.fromARGB(255, 158, 205, 236),
                  value: gelap,
                  onChanged: (value) {
                    setState(() {
                      gelap = value;
                    });
                  },
                ),
                Text(
                  gelap == true ? "Mati" : "Hidup",
                  style: TextStyle(
                    color: gelap
                        ? const Color.fromARGB(255, 12, 12, 12)
                        : const Color.fromARGB(255, 248, 243, 243),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
