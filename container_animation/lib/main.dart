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
double _width = 200;
double _height = 100;
bool flag = true;

Decoration mydecor = BoxDecoration(
  borderRadius: BorderRadius.circular(2),
  color: Colors.blueGrey,
);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      AnimatedContainer(
        width: _width,
        height: _height,
        duration: Duration(seconds: 2),
        decoration: mydecor,
        curve: Curves.bounceInOut,

      ),

      ElevatedButton(onPressed: (){
        if(flag == true){
          _width = 100;
          _height = 200;
          flag = false;
          mydecor = BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.blueGrey,
          );


        }
        else{
          _height = 100;
          _width = 200;
          flag = true;
          mydecor = BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.orange,
          );
        }

        setState(() {

        });
      }, child: Text("Animate")),
    ],
  ),
),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
