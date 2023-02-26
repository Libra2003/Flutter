import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switching_screen/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context)=>MyHomePage(title: "Fuckkkkkkkkkkkkk"),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Colors.blue,
       child: Center(child: Text("Classico",style: TextStyle(
         fontSize: 34,
         fontWeight: FontWeight.bold,
         color: Colors.white,
       ),),),

     ),
   );
  }
}