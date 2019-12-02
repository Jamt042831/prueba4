import 'package:flutter/material.dart';
import 'package:prueba4/Vista/Screens/SignUp.dart';
//import 'Vista/Screens/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreen
      ),
      home: SingUp(),
    );
  }
}