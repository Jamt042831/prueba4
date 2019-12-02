import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Image(
         // image: AssetImage('Assets/Hojita.png'),
        //),
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu), 
            onPressed: () {
            },
          )
        ],
      ), 
    );
  }
}