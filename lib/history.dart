import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Histori Transaksi"),
        backgroundColor: Color(0xFF87e69a),
        
      ),
     body: new ListDisplay(),
   );
 }
}

class ListDisplay extends StatelessWidget{
  var data = [
   "A","B"
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : new ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context ,int index){
          return new Card(
            child : Column(
              children: <Widget>[
                const ListTile(
                  
                  title :Text("Nama Pengirim"),
                  subtitle: Text("04 Oktober 2020\nBank BCA\nRp.1000.1000"),
                  trailing: Chip(backgroundColor: Colors.greenAccent,label: Text("Sukses",style: TextStyle(color : Colors.white),)),
                ),
              ],
            )
          );
        },)
    );
  }
}