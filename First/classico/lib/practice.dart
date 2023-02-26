import 'dart:io';
void main(){
  print("Welecome to the dart");
  stdout.write("Enter Your name Here: ");
  var name = stdin.readLineSync();
  print("Welcome,$name");

}