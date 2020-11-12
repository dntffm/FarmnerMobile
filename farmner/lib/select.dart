import 'dart.ui';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Select extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter custom clipper example"),
        ),
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            SizedBox(height: 10.0,),
            ClipPath(
                child: Container(
                  height: 120,
                  color: Color(0xFF87e69a),
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
                          color: Colors.white,
                        ),
                        child: IconButton(
                            icon: Icon(Icons.arrow_back,
                                size: 20, textDirection: TextDirection.rtl),
                            color: Color(0xFF87e69a),
                            onPressed: () {
                              Navigator.pop(context);
                            })),
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
                      "Daftar Sebagai :",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                Container(
                  width: 250,
                  child: Column(
                      children: [
                      RaisedButton(
                      onPressed: () {},
                  color: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    "Sebagai Petani",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF384a3c)),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38)),
                )
            ),
          ],
        ),
        child: RaisedButton(
          onPressed: () {},
          color: Color(0xFFFFFFFF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            "Sebagai Pasar",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF384a3c)),
          ),
        ),
        child: Card(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(38)),
        )
        ]
    ),
    )
    ],
    ),
    ));
  }
}