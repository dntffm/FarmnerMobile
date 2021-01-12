import 'package:flutter/material.dart';

class HistoryWidget extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset(
                    'assets/images/leaf.png',
                    height: 30,
                    width: 30,
                  ),
        backgroundColor: Color(0xFF87e69a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom : Radius.circular(20)
          )
        ),
      ),
     body: new ListDisplay(),
   );
 }
}

// ignore: must_be_immutable
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