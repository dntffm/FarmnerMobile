import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7CF79D),
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
                        color: Colors.white,
                      ),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20,
                          ),
                          color: Color(0xFF7CF79D),
                          alignment: Alignment.center,
                          onPressed: null)),
                  Image.asset(
                    'assets/images/leaf.png',
                    height: 50,
                    width: 50,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "Daftar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  TextField(
                    obscureText: true,
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    selectionWidthStyle: BoxWidthStyle.tight,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    autofocus: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  RaisedButton(
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }
}
