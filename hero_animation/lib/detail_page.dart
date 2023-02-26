import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Container(
        child: Hero(
          tag: 'Background',
          child: Image.asset('assets/images/image2.jpg'),
        ),
      ),
    );
  }

}