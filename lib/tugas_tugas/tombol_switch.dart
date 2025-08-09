import 'package:flutter/material.dart';

class ModeGelap extends StatefulWidget {
  const ModeGelap({super.key});

  @override
  State<ModeGelap> createState() => _DatepickerState();
}

class _DatepickerState extends State<ModeGelap> {
  bool gelap = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Mode Gelap"),
          Row(
            children: [
              Switch(
                value: gelap,
                onChanged: (value) {
                  setState(() {
                    gelap = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
