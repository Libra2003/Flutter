import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    var no1Controller = TextEditingController();
    var no2Controller = TextEditingController();
    var no1 = 0,no2 = 0;
    var result = "";


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,

                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,

                ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(


                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                    ElevatedButton(onPressed: (){
                      no1 = int.parse(no1Controller.text.toString());
                      no2 = int.parse(no2Controller.text.toString());

                      var sum = no1 + no2;
                      result = "The sum of $no1 and $no2 is $sum";
                      setState(() {

                      });

                    }, child: Text('Add')),
                    ElevatedButton(onPressed: (){
                      no1 = int.parse(no1Controller.text.toString());
                      no2 = int.parse(no2Controller.text.toString());

                      var minus = no1 - no2;
                      result = "The minus of $no1 and $no2 is $minus";
                      setState(() {

                      });
                    }, child: Text('Minus')),
                        ElevatedButton(onPressed: (){
                          no1 = int.parse(no1Controller.text.toString());
                          no2 = int.parse(no2Controller.text.toString());

                          var multi = no1 * no2;
                          result = "The Multiply of $no1 and $no2 is ${multi.toStringAsFixed(2)}";
                          setState(() {

                          });
                        }, child: Text('Multiply')),
                    ElevatedButton(onPressed: (){
                      no1 = int.parse(no1Controller.text.toString());
                      no2 = int.parse(no2Controller.text.toString());

                      double divide = no1 / no2;

                      result = "The Divide of $no1 and $no2, ${divide.toStringAsFixed(2)}";
                      setState(() {

                      });
                    }, child: Text('Divide')),
                      ],
                    ),
                  ),
                Padding(padding: EdgeInsets.all(21),
                child: Text( result,style: TextStyle(fontSize: 25,color: Colors.white),),),

              ],

            ),
          ),
        ),
      )
    );
  }
}
