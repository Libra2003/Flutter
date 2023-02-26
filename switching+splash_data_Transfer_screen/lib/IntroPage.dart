import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:switching_screen/main.dart';

class IntroPage extends StatelessWidget{
var userName;

IntroPage(this.userName);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),

      ),
      body: Center(
        child: Container(
          height: 300,
          child: Column(
            children: [
              Text("Welcome $userName ",style: TextStyle(
                fontSize: 21,fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                height: 12,
              ),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back')),
            ],
          ),
        ),
      ),
    );
  }

}