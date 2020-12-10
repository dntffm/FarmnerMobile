import 'dart:ui';

import 'package:flutter/material.dart';

class Pasar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.green[200], Colors.green[400]],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter),
                ),
                child: Center(
                  child: Image.asset("assets/images/petani.png",
                      height: 300,
                      width: 300),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 60, right: 60, top: 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _textInput(hint: "Fullname", icon: Icons.person),
                      _textInput(hint: "Email", icon: Icons.email),
                      _textInput(hint: "Password", icon: Icons.vpn_key),
                      _textInput(hint: "Phone Number", icon: Icons.call),
                      _textInput(hint: "Product", icon: Icons.local_grocery_store),
                      Expanded(
                        child: Center(
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.green[200], Colors.green[400]],
                                  end: Alignment.bottomCenter,
                                  begin: Alignment.topCenter),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(100)
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "DAFTAR",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      );
    }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.brown[100],
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
