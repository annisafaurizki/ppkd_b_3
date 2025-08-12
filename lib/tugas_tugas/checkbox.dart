import 'package:flutter/material.dart';

class MySyarat extends StatefulWidget {
  const MySyarat({super.key});

  @override
  State<MySyarat> createState() => _MySyaratState();
}

class _MySyaratState extends State<MySyarat> {
  bool isCheck = true;
  final String syarat =
      "Dengan menggunakan layanan ini, Anda setuju untuk mematuhi semua peraturan yang berlaku. Data yang Anda berikan akan digunakan sesuai kebijakan privasi. Kami berhak mengubah ketentuan ini sewaktu-waktu tanpa pemberitahuan sebelumnya.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Syarat dan Ketentuan"),
      //   centerTitle: true,
      //   leading: Icon(Icons.arrow_back_ios),
      // ),
      appBar: AppBar(title: Text("Syarat & Ketentuan")),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 174, 221, 248),
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(syarat, textAlign: TextAlign.justify),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    Text(
                      isCheck == true
                          ? "Lanjutkan pendaftaran diperbolehkan"
                          : "Anda belum bisa melanjutkan",
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Lanjutkan"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
