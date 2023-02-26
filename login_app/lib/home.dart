import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homePage extends StatefulWidget{
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home),

            ElevatedButton(onPressed: () async{
              var sharedPrefbool = await SharedPreferences.getInstance();
              sharedPrefbool.setBool(splashState.KEYLOGIN, false);
              Navigator.pop(context);
            }, child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}