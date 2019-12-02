import 'package:flutter/material.dart';
import 'package:prueba4/Vista/Screens/Registro/Formulario.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(150, 150, 150, 0.9),
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
      body: Formulario(),
    );
  }
}