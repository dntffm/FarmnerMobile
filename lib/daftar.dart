import 'dart:ui';

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
                    "Daftar",
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
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    TextFormField(
                      autofocus: true,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsetsDirectional.only(start: 12),
                            child: Icon(
                              Icons.alternate_email,
                              color: Color(0xFF384a3c),
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          hintText: "EmailMu",
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              borderRadius: BorderRadius.circular(15))),
                      /*  validator: (value) {
                        if (value.isEmpty) {
                          print("Field harus terisi");
                        }
                      }, */
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    TextFormField(
                      autofocus: true,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsetsDirectional.only(start: 12),
                            child: Icon(
                              Icons.security,
                              color: Color(0xFF3b3a39),
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                          hintText: "Password",
                          border: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      color: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3b3a39)),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(38)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
