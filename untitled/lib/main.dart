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


  @override
  Widget build(BuildContext context) {
      var arrData = [
        {
          "name": "Tayyab",
          "mobNo":"123",
          "unread":"0",
        }, {
          "name": "Zain",
          "mobNo":"456",
          "unread":"1",
        },
        {
          "name": "Talha",
          "mobNo":"789",
          "unread":"2",
        }, {
          "name": "Hadi",
          "mobNo":"2341",
          "unread":"3",
        }, {
          "name": "Ali",
          "mobNo":"987",
          "unread":"8",
        }, {
          "name": "Hanzla",
          "mobNo":"999",
          'unread':""
        }, {
          "name": "Aryain",
          "mobNo":"888",
          "unread":"7",
        },

      ];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
     body: Container(
       child: ListView(
         children: arrData.map((value) {
    // ListTile(
    // leading: Icon(Icons.account_circle),
    //   title: Text(value['name'].toString()),
    //   subtitle: Text(value['mobNo'].toString()),
    //   trailing: CircleAvatar(
    //       radius:12,
    //       backgroundColor:Colors.green,
    //       child: Text(value['unread'].toString())),
    //)
    //        return Padding(
    //          padding: const EdgeInsets.all(8.0),
    //
    //          child: Container(
    //            decoration: BoxDecoration(
    //              borderRadius: BorderRadius.circular(21),
    //              color: Colors.blue.shade100,
    //            ),
    //            child: Padding(
    //              padding: const EdgeInsets.all(8.0),
    //              child: Center(child: Text(value)),
    //            ),
    //          ),
    //        );
    //      }).toList(),

           return ExpansionTile(
             leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              children: <Widget>[
                  ListTile(
                    title: Text(
                      "Mobile No.: "+value['mobNo'].toString(),
                    ),
                    subtitle: Text("unread.: "+value["unread"].toString()),
                  ),
           ],
           );


    }).toList(),
      ),
    ),
    );
  }
}
