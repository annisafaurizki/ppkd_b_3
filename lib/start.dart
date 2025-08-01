import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Saya"),
        backgroundColor: const Color.fromARGB(255, 194, 163, 163),
        actions: [Icon(Icons.favorite), Icon(Icons.message)],
        centerTitle: true,
      ),
      // backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nama :",style:TextStyle(fontSize:15, color: Colors.amber)), 
              SizedBox(width: 80), 
              Text("Annisa Faurizki", 
              style: TextStyle(fontSize: 15, color: Colors.pinkAccent),),],
          ),

          Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                Icon(Icons.location_on, color: Colors.blue ), Text(":", style: TextStyle(color: Colors.blueAccent ),), 
                SizedBox(width: 110), 
                Text("Jakarta", style: TextStyle( fontSize: 15, color: Colors.amber),),],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Seorang pelajar yang sedang belajar Flutter", 
                style:TextStyle(fontSize:15, color: Colors.orange ) ,),
                
                SizedBox(height: 20),
                Container( 
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                color: Colors.amberAccent,
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(8),
            ),
            child: Text("Text ini dalam kotak")
                )
           ],
          ) 
        ],
      ),
    );
  }
}
