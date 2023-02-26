import 'package:flutter/material.dart';
import 'package:login_app/home.dart';
import 'package:login_app/splash_screen.dart';
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
      home: splash(),
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
  var passwordControler = TextEditingController();
  var EmailController = TextEditingController();
  static const String EMAILKEY = "EMAIL";
  static const String PASSWORDKEY = "PASSWORD";
var suffixText = "";
  var passwordValue = "password";
  var emailValue = "email";


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
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person,color: Colors.blue,size: 100,),
              SizedBox(height: 5,),
              TextField(
                onTap: () {
                  setState(() {
                    // Set suffix text to an empty string to make it disappear
                    suffixText = '';
                  });
                },
                decoration:InputDecoration(
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.lightBlue,
                  ),
                ),
                  labelText: "Email",
                  suffixText: "adress@example.com"

              ),
                controller: EmailController,
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                  labelText: "Password",
                ),
                controller: passwordControler,
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: () async{

                var emailString = EmailController.text.toString();
                var passwordString = passwordControler.text.toString();
                print(emailString);
                var sharedPrefBool = await SharedPreferences.getInstance();
                sharedPrefBool.setBool(splashState.KEYLOGIN, true);
                if(emailString.contains("@")){
                  var prefs = await SharedPreferences.getInstance();
                  prefs.setString(EMAILKEY, emailString);
                  prefs.setString(PASSWORDKEY, passwordString);

                  getValue();
                }
                else{

                  setState(() {
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.lightBlue,
                      child: Text("Plz Enter Correct Email and Password"),
                    );
                  });
                }

                  SizedBox(
                    height: 20,
                  );



              }, child: Text("Save")),
              ElevatedButton(onPressed: ()async{
                var emailid = EmailController.text.toString();
                var passid = passwordControler.text.toString();
                if(emailid==emailValue&&passid == passwordValue){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
                }
              }, child: Text("Login")),
              Text(emailValue+ " " + passwordValue,),
            ],
          ),
        ),
      ),
    );
  }
void getValue()async{
    var prefs = await SharedPreferences.getInstance();
    var getemail = prefs.getString(EMAILKEY);
    emailValue = getemail ?? "Enter your Email";
    var getPassword = prefs.getString(PASSWORDKEY);
    passwordValue = getPassword ?? " and Password";
    print(emailValue+passwordValue);
    setState(() {

    });

}

}

