import 'package:flutter/material.dart';
import 'package:ppkd_b_3/tugas_tugas/login.dart';

class Navpush extends StatelessWidget {
  const Navpush({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Navpush2()),
            );
          },
          child: const Text('kembali'),
        ),
      ),
    );
  }
}

class Navpush2 extends StatelessWidget {
  const Navpush2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text('balik'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              MaterialPageRoute(builder: (context) => const Login());
            },
            child: Text("balik lagi"),
          ),
        ],
      ),
    );
  }
}
