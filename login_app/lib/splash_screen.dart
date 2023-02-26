import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/home.dart';
import 'package:login_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splash extends StatefulWidget{
  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  static const String KEYLOGIN = "Login";
  @override
  void initState(){
   whereToGo();
  }
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      color: Colors.lightBlue,
      child: Center(
        child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
    ),
    );
  }
  void whereToGo() async{
    var sharepref =  await SharedPreferences.getInstance();
    var isLoggedin = sharepref.getBool(KEYLOGIN);
    print(1);
    sharepref.getBool(KEYLOGIN);
    print(1.5);
    Timer(Duration(seconds: 3),(){
      print(1);
      if(isLoggedin!=null){
        if(isLoggedin){
          print(1);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homePage()));

        }
        else{
          print(2);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "Login Page")));
        }
      }
      else{
        print(3);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "Login Page")));

      }
        });

  }
}