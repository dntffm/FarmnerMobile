import 'dart:ui';

import 'package:farmner/daftar.dart';
import 'package:farmner/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Farmner",
      home: LandingPage(),
      /* initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LandingPage(),
        //'/login': (BuildContext context) => LandingPage()
      }, */
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF87e69a),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Image.asset('assets/images/leaf.png')),
            Card(
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Container(
                margin: EdgeInsets.all(16),
                width: 300,
                height: 110,
                /* child: Text(
                    "Selamat Datang di Farmner\nPartnership Untuk Petani Dan Pasar",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   */
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Selamat Datang di Farmner\nPartnership Untuk Petani Dan Pasar",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (context) => Daftar()));
                              },
                              child: Text(
                                "Daftar",
                                style: TextStyle(color: Color(0xFF87e69a)),
                              )),
                          RaisedButton(
                            color: Color(0xFF87e69a),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(0),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: <Color>[
                                  Color(0x7CF79D),
                                  Color(0x7CF79D),
                                  Color(0x7CF79D)
                                ]),
                              ),
                              child: Text(
                                "Login",
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
