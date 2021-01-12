import 'package:flutter/material.dart';

class ProfileViewWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
      body: ProfileView(),
    );
  }
}

class ProfileView extends StatelessWidget{
  @override                               
  Widget build(BuildContext context){
    return Container(
      height: 150,
      child: Card(
        
        shape : RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        
        child: Padding(
          padding: EdgeInsets.all(10),
          child :
          Column(
          children : [
            Text("Profil Pribadi",style: TextStyle(fontSize : 16, fontWeight : FontWeight.bold),),
            ListTile(
              
              leading : Icon(
                Icons.account_circle,
                size: 100,
              ),
              title: Text('Bpk. Mustofa'),
              subtitle: Text('JL. Kalimantan no 10 Jember'),
            )
          ]
        ),
        )
      ),
    );
  }
}

