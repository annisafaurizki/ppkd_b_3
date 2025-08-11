import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ppkd_b_3/tugas_tugas/halaman_utama.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordHidden = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"), leading: Icon(Icons.arrow_back_ios)),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
                child: Text(
                  "Sign In to your account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.left,
                ),
              ),

              SizedBox(height: 40),

              SizedBox(
                width: double.infinity,

                child: Text(
                  "Enter Address",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
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

              SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ),

              SizedBox(height: 10),

              TextFormField(
                obscureText: _isPasswordHidden,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordHidden
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordHidden = !_isPasswordHidden;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password tidak boleh kosong";
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  print("Lupa bang");
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: double.infinity,

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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const FirstPage(),
                                    ),
                                  );
                                },
                                child: Text("OK"),
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
                                Text(
                                  "Silahkan masukkan email/password yang valid",
                                ),
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
                                onPressed: () => Navigator.of(context).pop(),
                                child: Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },

                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: "Don't have an acoount? ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Sign up",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Sign up");
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 8),
                  Text("Or Sign In With"),
                  SizedBox(width: 8),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(elevation: WidgetStatePropertyAll(0)),
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/google.jpg',
                        height: 30,
                        width: 24,
                      ),
                      label: Text("google"),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(elevation: WidgetStatePropertyAll(0)),
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/fesbuk.png',
                        height: 30,
                        width: 24,
                      ),
                      label: Text("Facebook"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an acoount? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Join Us",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print("Join Us");
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
