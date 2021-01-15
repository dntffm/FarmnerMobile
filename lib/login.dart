import 'dart:ui';

import 'package:farmner/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _unameController = TextEditingController();
  final _passwordController = TextEditingController();

  _saveLogin(uname,password) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString("username", uname);
    await preferences.setString("password", password);
  }

  @override
  void dispose(){
    _unameController.dispose();
    _passwordController.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
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
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20,
                          ),
                          color: Color(0xFF87e69a),
                          alignment: Alignment.center,
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
                    "Login",
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
                child: Form(key : _formKey,child:Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    TextFormField(
                      controller: _unameController,
                      validator: (value){
                        if(value.isEmpty){
                          return 'tidak boleh kosong';
                        }
                        return null;
                      },
                      autofocus: true,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsetsDirectional.only(start: 12),
                            child: Icon(
                              Icons.alternate_email,
                              color: Color(0xFF3b3a39),
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
                      controller: _passwordController,
                      validator: (value){
                        if(value.isEmpty){
                          return 'tidak boleh kosong';
                        }
                        return null;
                      },
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
                      onPressed: () {
                        if(_formKey.currentState.validate()){
                          if(_unameController.text == "paktani" && _passwordController.text == "password"){
                            return showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  title: Text("Simpan Akses?"),
                                  content: SingleChildScrollView(
                                    child : ListBody(children: [
                                      Text("Simpan Akses ?")
                                    ],)
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: (){
                                        _saveLogin(_unameController.text, _passwordController.text);
                                      }, 
                                      child: Text('Iya')
                                    ),
                                    TextButton(
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                        Navigator.push(context, new MaterialPageRoute(builder: (context) => HomePage()));
                                      }, 
                                      child: Text('Tidak')
                                    )
                                  ],
                                );
                              }
                            );
                          }
                          //Navigator.push(context, new MaterialPageRoute(builder: (context) => HomePage()));
                        }
                      },
                      color: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Login",
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
                  ],
                ),
              ),)
            ],
          ),
        ));
  }
}
