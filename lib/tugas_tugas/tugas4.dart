import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  const Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Produk"),backgroundColor: const Color.fromARGB(255, 245, 200, 234),
        actions: [Icon(Icons.help_center_rounded)],
        centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
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
                  
              ListTile(
              title: Text("BMW"), 
              subtitle: Text("2.000.000.000"),
              tileColor: const Color.fromARGB(255, 235, 233, 236),
              leading: Icon(Icons.key),
              onTap: () {}),
              
              ListTile(
              title: Text("Truk"),
              subtitle: Text("5.000.000.000"),
               tileColor: const Color.fromARGB(255, 236, 216, 248),
              leading: Icon(Icons.local_shipping),
              onTap: () {}),
        
              ListTile(
              title: Text("Aerox New"),
              subtitle: Text("30.000.000"),
              tileColor: const Color.fromARGB(255, 235, 233, 236),
              leading: Icon(Icons.motorcycle),
              onTap: () {}),
        
              ListTile(
              title: Text("Kembang 7 Rupa"),
              subtitle: Text("Nyawa"),
               tileColor: const Color.fromARGB(255, 236, 216, 248),
              leading: Icon(Icons.local_florist),
              onTap: () {}),
        
              ListTile(
              title: Text("Iphone 15 ProMAX"),
              subtitle: Text("23.000.000"),
               tileColor: const Color.fromARGB(255, 235, 233, 236),
              leading: Icon(Icons.phone_android),
              onTap: () {}),
            
              ListTile(
              title: Text("Palu Thor"),
              subtitle: Text("40.000.000"),
               tileColor: const Color.fromARGB(255, 236, 216, 248),
              leading: Icon(Icons.build),
              onTap: () {}),
            
              ListTile(
              title: Text("Lensa Bulan"),
              subtitle: Text("40.000.000"),
              tileColor: const Color.fromARGB(255, 235, 233, 236),
              leading: Icon(Icons.camera),
              onTap: () {}),
            
              ListTile(
              title: Text("Keyboard"),
              tileColor: const Color.fromARGB(255, 236, 216, 248),
              subtitle: Text("40.000.000"),
              leading: Icon(Icons.keyboard),
              onTap: () {}),
            
              ListTile(
              title: Text("Batu Tembok Cina"),
              subtitle: Text("1.000.000.000"),
              tileColor: const Color.fromARGB(255, 235, 233, 236),
              leading: Icon(Icons.fence),
              onTap: () {}),
            
              ListTile(
              title: Text("Buah Gomu"),
              tileColor: const Color.fromARGB(255, 236, 216, 248),
              subtitle: Text("500.000.000"),
              leading: Icon(Icons.apple),
              onTap: () {})
            
          ]
        ),
      ),
    );
  }
}