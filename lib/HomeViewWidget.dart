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
          child: Container(
            height: 200,
            width: 400,
           
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                    'assets/images/sayur.jpg',
                    fit: BoxFit.fill,
                  ),
            )
          ),
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
                BodyCard(),
              ]
            )),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10
              ), 
              delegate: SliverChildListDelegate(
                [
                  BodyCard(),
                  BodyCard(),
                  BodyCard(),
                  BodyCard(),
                  BodyCard(),
                  BodyCard(),
                  BodyCard(),
                  BodyCard(),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}