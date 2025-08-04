import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman"),backgroundColor: const Color.fromARGB(255, 245, 200, 234),
        actions: [Icon(Icons.help_center_rounded)],
        centerTitle: true,),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [],),
                TextFormField( 
                  decoration: InputDecoration(labelText: "Nama", border: OutlineInputBorder(), hintText: "Masukkan Nama Anda", prefixIcon: Icon(Icons.person_3), ),),
                SizedBox(height: 10,),
            Row(
              children: [
                ],),
                TextFormField(decoration: InputDecoration( border: OutlineInputBorder(), labelText: "Email", hintText: "Masukkan Email Anda", prefixIcon: Icon(Icons.email), ),),
                SizedBox(height: 10,),
            Row(
              children: [
              ],),
                TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "No.Handphone", hintText: "Masukkan Nomor Anda", prefixIcon: Icon(Icons.phone),),),
                SizedBox(height: 10,),
            Row(
              children: [
              ],),
                TextFormField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Deskripsi", hintText: "Tuliskan Deskripsi"),),
                SizedBox(height: 10,),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 217, 250, 235), borderRadius: BorderRadius.circular(20)),
                       ),
                     Text("Kotak 1")
                    ],
                  ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 171, 220, 240),borderRadius: BorderRadius.circular(20),),
                    ),
                    Text("Kotak 2")
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 252, 212, 240), borderRadius: BorderRadius.circular(20)),
                    ),
                    Text("Kotak 3")
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 220, 224, 178), borderRadius: BorderRadius.circular(20)),
                    ),
                    Text("Kotak 4")
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 138, 107, 125), borderRadius: BorderRadius.circular(20)),
                    ),
                    Text("Kotak 5")
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 184, 233, 221), borderRadius: BorderRadius.circular(20)),
                    ),
                    
                    Text("Kotak 6")
                    
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}