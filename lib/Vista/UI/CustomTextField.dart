import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      this._textHint, this._icon, this.ancho, this.alto, this.textInputType, 
      {this.colorPrimario: Colors.green,
      this.colorSecundario: Colors.white,
      this.obscure: false,
      this.onsaved,
      this.validar,
      this.maxlength});

  final Icon _icon;
  final String _textHint;
  final Color colorPrimario;
  final Color colorSecundario;
  final double ancho;
  final double alto;
  final TextInputType textInputType;
  final bool obscure;
  final Function onsaved;
  final Function validar;
  final dynamic maxlength;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ancho * 0.85,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: colorPrimario,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: _icon,
            ),
            Container(
              width: ancho * 0.70,
              height: alto * 0.07,
              // padding: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(15.0))),
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 15),
                child: TextFormField(
                  inputFormatters: [LengthLimitingTextInputFormatter(maxlength)],
                  maxLengthEnforced: true,
                  obscureText: obscure,
                  keyboardType: textInputType,
                  onChanged: (data) {
                    print("OnChanged");
                  },
                  onTap: () {
                    print("OnTap");
                  },
                  validator: validar,
                  onSaved: onsaved,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.lightGreen,
                    border: InputBorder.none,
                    hintText: _textHint,
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
