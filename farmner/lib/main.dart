import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(LandingPage());

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.green.shade200,
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
                      Row(
                        children: [
                          RaisedButton(
                            onPressed: null,
                            color: Colors.green,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(0),
                            child: Container(
                              child: Text(
                                "Login",
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
