import 'package:flutter/material.dart';

class Tugas2 extends StatelessWidget {
  const Tugas2({super.key});
  final String deskripsi = "Halo! Saya Annisa Faurizki, pribadi yang berdedikasi, teliti, dan memiliki semangat tinggi dalam belajar serta berkembang di bidang yang saya tekuni. Saya senang bekerja secara kolaboratif maupun mandiri, dan selalu berusaha memberikan hasil terbaik dalam setiap tugas yang saya jalani. Dengan komitmen dan rasa tanggung jawab yang tinggi, saya percaya bahwa proses belajar tidak pernah berhenti.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Lengkap"),
        backgroundColor: const Color.fromARGB(255, 230, 175, 193),
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              
              width: double.infinity,
              

              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  SizedBox(width: 8),
                  Text("Annisa Faurizki", style: TextStyle(fontSize: 40),),
                ],
              ),
            ),
          
            Container(
              margin: EdgeInsets.all(16),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 233, 192, 205),
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(15),
              ),
            
              child: Row(
                children: [
                  SizedBox(width: 13,),
                  Icon(Icons.email),
                  SizedBox(width: 15),
                  Text("annisafaurizkippkdjp@gmail.com"),
                ],
              ),
            ),
      
            Container(
                    margin: EdgeInsets.all(16),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 238, 194, 209),
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Row(
                      children: [
                        SizedBox(width: 13,),
                        Icon(Icons.phone),
                        SizedBox(width: 15),
                        Text("081297635363"),
                      ],
                    ),
                  ),
                SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(45),
                      padding: EdgeInsets.all(12),
                      height: 60,
                      alignment: Alignment.center,
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 198, 235),
                        border: Border.all(
                          color: const Color.fromARGB(255, 138, 112, 143),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),

                      child: Text("Postingan"),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.all(45),
                      padding: EdgeInsets.all(16),
                      height: 60,
                      alignment: Alignment.center,
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 196, 193),
                        border: Border.all(
                          color: const Color.fromARGB(255, 136, 98, 95),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text("Followers"),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16,),
            Text('Deskripsi Profile'),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), border: Border.all(color: const Color.fromARGB(255, 240, 178, 199))),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    deskripsi, textAlign: TextAlign.justify,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
