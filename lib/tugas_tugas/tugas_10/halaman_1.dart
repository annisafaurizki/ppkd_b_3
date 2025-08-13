import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ppkd_b_3/extension/navigation.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_10/halaman_2.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_10/textfrom.dart';

class Pertama extends StatefulWidget {
  const Pertama({super.key});

  @override
  State<Pertama> createState() => _PertamaState();
}

class _PertamaState extends State<Pertama> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController domisiliController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                "Formulir Daftar",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 30),

              Row(children: [Text("Nama")]),
              TextFormConst(
                hintText: "Masukkan Nama",
                controller: namaController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
                  }
                  return null;
                },
              ),

              Row(children: [Text("Email")]),
              TextFormConst(
                hintText: "Masukan Email",
                controller: emailController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Tidak Valid";
                  }
                  if (!value.contains("@")) {
                    return "Email tidak valid";
                  }
                  return null;
                },
              ),

              Row(children: [Text("Phone")]),
              TextFormConst(
                hintText: "Masukkan Phone",
                controller: phoneController,
                onChanged: (p0) {
                  setState(() {});
                },
              ),

              Row(children: [Text("Domisili")]),
              TextFormConst(
                hintText: "Masukkan Domisili",
                controller: domisiliController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Domisili tidak boleh kosong";
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                          const Color.fromARGB(255, 55, 96, 233),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // TAMPILKAN DIALOG BERHASIL
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Berhasil"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 20),
                                    Lottie.asset(
                                      "assets/images/animations/Check Mark.json",
                                      width: 90,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      context.push(
                                        Halaman2(
                                          nama: namaController.text,
                                          domisili: domisiliController.text,
                                        ),
                                      );
                                    },
                                    child: Text("Lanjutkan"),
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          // TAMPILKAN DIALOG GAGAL
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("GAGAL"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Form belum terisi"),
                                    SizedBox(height: 20),
                                    Lottie.asset(
                                      "assets/images/animations/Failed.json",
                                      width: 90,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(),
                                    child: Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: Text(
                        "Daftar",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
