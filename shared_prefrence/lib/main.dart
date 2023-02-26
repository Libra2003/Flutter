import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  var nameContoller = TextEditingController();
  static const String KeyName="name";
  var nameValue = "";
  @override
  void initState(){
    super.initState();
    getValue();
  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(

        child: Center(
          child: SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home,color: Colors.white.withOpacity(0.5),),
                TextField(
                  decoration:InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),

                    ),
                    labelText: "Name",
                  ),
                  controller: nameContoller,
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: ()async{
                  var name = nameContoller.text.toString();
                  var prefs = await SharedPreferences.getInstance();
                  prefs.setString(KeyName, name);
                  getValue();

                }, child: Text("Save")),
                Text("Saved Value: "+ nameValue),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void getValue() async{
    print(nameValue);

    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KeyName);
    nameValue = getName ?? "No valve Savjklhed";
    setState(() {

    });
  }
}
