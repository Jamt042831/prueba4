import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Image(
         // image: AssetImage('Assets/Hojita.png'),
        //),
        title: Text("Homeee"),
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