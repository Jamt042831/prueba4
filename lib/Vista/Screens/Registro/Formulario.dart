import 'package:flutter/material.dart';
//import 'package:prueba4/Controlador/BaseDatos/Cloud.dart';
import 'package:prueba4/Vista/UI/CustomTextField.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();
  String _name;
  String _lastName;
  String _email;
  String _phone;
  String _pass;
  String _cpass;

  @override
  Widget build(BuildContext context) {
    var ancho = MediaQuery.of(context).size.width;
    var alto = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
                child: Text(
                  "Registrate!",
                  style: TextStyle(fontSize: 30),
                ),
                padding: EdgeInsets.only(top: 30)),
            Container(
              width: ancho,
              height: alto * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CustomTextField(
                    "Nombres:",
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    ancho,
                    alto,
                    TextInputType.text,
                    validar: _validarname(),
                    onsaved: _savedname(),
                  ),
                  CustomTextField(
                    "Apellidos:",
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    ancho,
                    alto,
                    TextInputType.text,
                    validar: _validarlname(),
                    onsaved: _savedlastName(),
                  ),
                  CustomTextField(
                    "Email:",
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                    ),
                    ancho,
                    alto,
                    TextInputType.emailAddress,
                    validar: _validaremail(),
                    onsaved: _savedemail(),
                  ),
                  CustomTextField(
                    "Telefóno:",
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    ancho,
                    alto,
                    TextInputType.phone,
                    validar: _validarphone(),
                    onsaved: _savedphone(),
                    maxlength: 10,
                  ),
                  CustomTextField(
                    "Constraseña:",
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    ancho,
                    alto,
                    TextInputType.text,
                    obscure: true,
                    validar: _validarpass(),
                    onsaved: _savedpass(),
                  ),
                  CustomTextField(
                    "Confirme Contraseña:",
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    ancho,
                    alto,
                    TextInputType.text,
                    obscure: true,
                    validar: _validarpass1(),
                  ),
                  Container(
                    width: ancho * 0.35,
                    height: alto * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: RaisedButton(
                      onPressed: _pressed,
                      color: Colors.green,
                      child: Text("Enviar"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _validaremail() {
    return (String value) {
      String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
          "\\@" +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
          "(" +
          "\\." +
          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
          ")+";
      if (value.isEmpty) {
        return 'Por favor ingrese el E-mail';
      }
      if (!RegExp(p).hasMatch(value)) {
        return 'El E-mail es invalido';
      }
      return null;
    };
  }

  _validarname() {
    return (String value) {
      if (value.isEmpty) {
        return 'Por favor ingrese el nombre';
      }
      if (value.length < 3) {
        return "Ingrese un nombre valido";
      }
      return null;
    };
  }

  _validarlname() {
    return (String value) {
      if (value.isEmpty) {
        return "Por favor ingrese el apellido";
      }
      if (value.length < 3) {
        return "Ingrese un apellido valido";
      }
      return null;
    };
  }

  _validarphone() {
    return (String value) {
      String n = "[0-9]{10}";
      if (value.isEmpty) {
        return 'Por favor ingrese un número';
      }
      if (!RegExp(n).hasMatch(value)) {
        return 'El número telefónico no es valido';
      }
      return null;
    };
  }

  _validarpass() {
    return (String value) {
      _cpass=value;
      String n = "[0-9]";
      String p = "[A-Z]";
      String l = "[a-z]";
      if (value.isEmpty) {
        return "Por favor ingrese la contraseña";
      }
      if (value.length < 9) {
        return "Ingrese una contraseña valida";
      }
      if (!RegExp(n).hasMatch(value) || !RegExp(l).hasMatch(value)) {
        if (!RegExp(p).hasMatch(value)) {
          return 'La contraseña debe contener numeros y minimo una mayuscula';
        }
        return 'La contraseña debe contener numeros y letra';
      } else {
        if (!RegExp(p).hasMatch(value)) {
          return 'La contraseña debe contener numeros y minimo una mayuscula';
        }
      }
      return null;
    };
  }

  _validarpass1(){
    return(String value){
      if(value!=_cpass){
        return 'Las contraseñas deben coincidir';
      }
      return null;
    };
  }

  _savedname() {
    return (data) {
      _name = data;
    };
  }

  _savedlastName() {
    return (data) {
      _lastName = data;
    };
  }

  _savedemail() {
    return (data) {
      _email = data;
    };
  }

  _savedphone() {
    return (data) {
      _phone = data;
    };
  }

  _savedpass() {
    return (data) {
      _pass = data;
    };
  }

  void _pressed() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      
      print(_name);
      print(_lastName);
      print(_email);
      print(_pass);
      print(_phone);   
     // Cloud(_name, _lastName, _email, _phone, _pass).registrarUser();
    }
  }
}
