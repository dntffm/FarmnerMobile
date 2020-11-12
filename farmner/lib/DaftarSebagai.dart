import 'dart.ui';
import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF87e69a),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 35, horizontal: 15),
            width: 330,
            child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Ink(
                       height: 30,
                       width: 30,
                       decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: Colors.white,),
                      child: IconButton(
                          icon : Icon(Icons.arrow_back),
                          onPressed: ()
                          iconSize: 20, textDirection: TextDirection.rtl,);
                          color: Color(0xFF87e69a),
                            Navigator.pop(context);
                          )]),
                Image.asset(
                 'assets/images/leaf.png',
                  height: 30,
                  width: 30,
                  )
                ],
              ),
                Row(
                  children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 50)),
                  Text(
                    "Daftar Sebagai",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        decoration: TextDecoration.underline),
                      )
                    ],
                  ),
    ]
                Container(
                  width: 250,
                  child: Column(
                    children: [
                      RaisedButton:[
                        onPressed: (){},
                      color: color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                      child : Text(
                        "Sebagai Petani"
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color(0xFF3b3a39)),
                          ),
                        ),
                      Card(
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38)),
                    ),
                    ),
                    child: Column(
                      children: [
                        RaisedButton:[
                          onPressed: (){},
                      color: color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                      child : Text(
                     "Sebagai Pasar"
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: color(0xFF3b3a39)),
                         ),
    ),
                        Card(
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38)),
                        ),
    )
    ],
    ),
  }
}
)
],
    ),
}
