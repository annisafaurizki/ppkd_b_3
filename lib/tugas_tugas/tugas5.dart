import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  int counter= 0;
  String name= "Nama : Annisa Faurizki";
  bool showName= true;
  bool liked= true;
  String selengkapnya= "ini minggu ke dua saya belajar mobile programming";
  bool lengkap= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Day 8 Elevated Button")),
      backgroundColor: const Color.fromRGBO(248, 220, 252, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [

              SizedBox(height: 20),
  
              ElevatedButton(  style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 218, 235, 248)),
                ),
                onPressed: (){
                  setState(() {
                    showName = !showName;
                    print("showName");
                    print(showName);
                  });
                }, child: Text(showName ? "Sembunyikan" : "Tampilkan"),
                
                ),
                showName ? Text(name, style: TextStyle(fontSize: 20)) : SizedBox(),

                SizedBox(height: 30),

           IconButton(
                onPressed: () {
                  setState(() {
                    liked = !liked;
                  });
                },
                icon: Icon(Icons.favorite),
                color: liked ? Colors.pink : Colors.black
              ),

              SizedBox(height: 30,),
         
          TextButton(
                onPressed: (){
                  setState(() {
                    lengkap = !lengkap;
                    print("lengkap");
                    print(lengkap);
                  });
                }, child: Text(lengkap ? "Deskripsi" : "Deskripsi"),
                ),
                lengkap ? Text(selengkapnya, style: TextStyle(fontSize: 20), textAlign: TextAlign.center) : SizedBox(),
                
                Text("Berapa kali pencet $counter", style: TextStyle(fontSize: 30), ),
                SizedBox(height: 10,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 197, 221, 248),
                    onPressed: () {
                    setState(() {});
                    counter--;
                    }, 
                      child : Icon(Icons.minimize),
                  ),
                              
                     SizedBox(width: 20),
                          
                    FloatingActionButton(
                    backgroundColor: const Color.fromARGB(255, 197, 221, 248),
                    onPressed: () {
                    setState(() {});
                    counter++;
                    }, 
                      child : Icon(Icons.add),
                  ),
                ],
                              ),

              SizedBox(height: 50,),

               InkWell(
                  onTap: (){
                    print("Ini dipencet");
                  },
                 child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 250,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 171, 220, 240),borderRadius: BorderRadius.circular(20),),
                      ),
                      Text("Pencet di sini ")
                    ],
                  ),
               ),  

               SizedBox(height: 50,),

               GestureDetector(
            onTap: () {
              print("aw");
            },
            onDoubleTap: () {
              print("aw aw");
            },
            onLongPress: () {
              print("AAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWW!!!!!!!!!!!!!!!!");
            },
      
            child: Container(
              alignment: Alignment.center,
              
              height: 100,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color.fromARGB(255, 208, 221, 248), ),
              
              child: Text("Coba Pencet", style: TextStyle(fontSize: 15), ),
            ),
          ),
         ],
        ),  
       ),
      ),
    );
  }
}