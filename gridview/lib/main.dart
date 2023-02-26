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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.orange,
      Colors.blue,
      Colors.black,
      Colors.red,
      Colors.indigo,
      Colors.green,
      Colors.lightBlue,
      Colors.yellowAccent,
      Colors.blueAccent,

    ];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
       // body: GridView.count(
       //    crossAxisCount: 4,
       //   crossAxisSpacing: 11,
       //   mainAxisSpacing: 11,
       //   children: [
       //     Container(color: arrColor[0],),
       //     Container(color: arrColor[1],),
       //     Container(color: arrColor[2],),
       //     Container(color: arrColor[3],),
       //     Container(color: arrColor[4],),
       //     Container(color: arrColor[5],),
       //     Container(color: arrColor[6],),
       //     Container(color: arrColor[7],),
       //     Container(color: arrColor[8],),
       //     Container(
       //       height: 100,
       //     ),
       //
       //   ],
       //),
    // body: Container(
    //
    //   child: GridView.extent(
    //         maxCrossAxisExtent: 300,
    //        crossAxisSpacing: 11,
    //        mainAxisSpacing: 11,
    //        children: [
    //          Container(color: arrColor[0],),
    //          Container(color: arrColor[1],),
    //          Container(color: arrColor[2],),
    //          Container(color: arrColor[3],),
    //          Container(color: arrColor[4],),
    //          Container(color: arrColor[5],),
    //          Container(color: arrColor[6],),
    //          Container(color: arrColor[7],),
    //          Container(color: arrColor[8],),
    //          Container(
    //            height: 100,
    //          ),
    //
    //        ],
    //      ),
    // ),
      body: GridView.builder(itemBuilder: (context,index){
        return Container(color: arrColor[index],);
      },itemCount: arrColor.length,gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,
      crossAxisSpacing: 11,mainAxisSpacing: 11
      ),
      )

       );
       // This trailing comma makes auto-formatting nicer for build methods.

  }
}
