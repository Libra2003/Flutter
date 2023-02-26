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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    var wtController = TextEditingController();
    var heightController = TextEditingController();
    var bgColor = Colors.white;
    var result = "";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Center(child: Text("YourBMI")),
      ),

      body: Center(
        child: Container(
          width: 300,
          height: double.infinity,
          decoration: BoxDecoration(
            //color: bgColor,
            // gradient: LinearGradient(
            //   colors: [
            //     Color(0xff84fab0),Color(0xff8fd3f4),
            //   ],
            //   begin: FractionalOffset(1.0,0.0),
            //   end: FractionalOffset(0.0,1.0),
            // ),
            gradient: RadialGradient(
              colors:[
                Color(0xff84fab0),Color(0xff8fd3f4),
              ],
            center: Alignment.topCenter,
            )
          ),
          //color: Colors.green.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("BMI",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black ),),
              TextField(
                keyboardType: TextInputType.number,
                controller: wtController,
                decoration: InputDecoration(
                  label: Text("Enter your Weight here(kg)"),
                  prefixIcon: Icon(Icons.line_weight),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                keyboardType: TextInputType.number,
                controller: heightController,
                decoration: InputDecoration(
                  label: Text("Enter Height here(meters)"),
                  prefixIcon: Icon(Icons.height)
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){

                var wt = wtController.text.toString();
                var ht = heightController.text.toString();
                var msg = "";

                if(wt!=""&&ht!=""){
                  var iht = double.parse(ht);
                  var iwt = double.parse(wt);
                  //Calculation
                  var bmi = iwt/(iht*iht);

                  if(bmi>25){

                    msg = "You are OverWeight!!!";
                    bgColor = Colors.red.shade50;
                  }
                  else if(bmi<18){

                    msg = "You are UnderWeight!!!";
                    bgColor = Colors.orange.shade100;
                  }
                  else{

                    msg = "You are healthy!!!";
                    bgColor = Colors.green.shade100;
                  }
                  SizedBox(height: 12,);
                  setState(() {
                    result = "$msg \n Your bmi is ${bmi.toStringAsFixed(2)}";
                  });

                }
                else{
                  setState(() {
                   result="Plz fill out all the fields";

                  });
                }


              }, child: Text("Calculate")),

              Text(result,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ],
          ),
        ),
      ),

    );
  }
}
