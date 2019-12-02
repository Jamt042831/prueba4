import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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