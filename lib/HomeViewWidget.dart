import 'package:flutter/material.dart';

class HomeViewWidget extends StatelessWidget{
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
      body: HomeView(),
    );
  }
}

class BodyCard extends StatelessWidget{
  BodyCard(this.namaBarang,this.namaPenjual,this.hargaBarang);

  final String namaBarang;
  final int hargaBarang;
  final String namaPenjual;
  @override
  Widget build(BuildContext context){
    return Container(
      height: 200.0,
      alignment: Alignment.center,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: InkWell(
          splashColor: Colors.green.withAlpha(30),
          onTap: (){

          },
          child: Expanded(child: Container(
            height: 220,
            width: 390,
            child: Column(
              children : [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                          'assets/images/sayur.jpg',
                          fit: BoxFit.fill,
                        ),
                  ),
                  Row(
                    children : [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(this.namaBarang,textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold ),),
                          Text(this.namaPenjual,textAlign: TextAlign.left),
                          Text(this.hargaBarang.toString(),textAlign: TextAlign.left)
                        ],
                      ),
                      ),
                      
                      ElevatedButton(
                        onPressed : (){},
                        child : Text('Beli'),
                        
                      )
                    ]
                  ),
                  Row(
                    children : [
                    ]
                  )
                  
              ]
            )
          ),)
        ),
      ),
    );
  }
}

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(delegate: SliverChildListDelegate(
              [
                BodyCard("","",0),
              ]
            )),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10
              ), 
              delegate: SliverChildListDelegate(
                [
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                  BodyCard("Pak Budi","Kacang Panjang",10000),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}