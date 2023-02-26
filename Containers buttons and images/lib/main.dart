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



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Container"),
      ),

        body:SingleChildScrollView(
          child: Center(
            child: Column(
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    color: Colors.blue,
                    child: Center(
                      child: Text("Hello devops in the ceneter of the containers",style: TextStyle(fontSize: 25,
                          color:Colors.yellowAccent,
                          fontWeight: FontWeight.bold,backgroundColor: Colors.deepOrangeAccent)),
                    ),
                  ),
                  Container(
                      width: 300,
                      height: 200,
                      color: Colors.tealAccent,
                      child: Center(
                        child: Column(
                            children: [
                              TextButton(
                                onPressed: () { print("Fuck");
                                print(_counter);
                                _counter++;},
                                child: Text("Text Button"),


                              ),

                            ElevatedButton(
                              onPressed: (){
                                print("Pressing the elecated button");
                              },
                              child: Text("Elevated Button"),
                            ),

                            OutlinedButton(
                                  onPressed: (){
print("Outline button is pressed");
                                },
                                child: Text("Outlined Button")
                              )

]
                        ),
                      )
                  ),
                  Container(
                      width: 400,
                      height: 400,
                      //color: Colors.black54,
                      child:Image.asset('assets/images/Bridge.jpg')


                  ),
                  Positioned(
                      left: 10,
                      top:10,

                      child: AnimatedDefaultTextStyle(
                          child: Text("Animate"),
                          style: style, duration: const Duration(seconds: 2)))
                ]
            ),
          ),



        )
    );





  }
}
