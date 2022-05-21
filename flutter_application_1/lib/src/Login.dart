// ignore_for_file: prefer_const_constructors, deprecated_member_use, camel_case_types, avoid_print

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginMenu extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginMenuState createState() => _LoginMenuState();
}

class _LoginMenuState extends State<LoginMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Iniciar Registro'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Viaja seguro \ncon Nosotros".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  //fontFamily: '',
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset('assets/logo.png'),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Registrate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('object');
                    },
                    child: Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              _textFieldName(),
              SizedBox(
                height: 25.0,
              ),
              _textFieldEmail(),
              SizedBox(
                height: 25.0,
              ),
              _textFieldPassword(),
              SizedBox(
                height: 25.0,
              ),
              _buttonSignUp(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldName() {
    return _textFieldForm(
      labeltext: 'Nombre',
      hintText: 'Edgar Chavez',
      icon: Icons.person_outline,
      onChanged: (value) {},
      keyboardType: TextInputType.text,
      obscuretext: false,
    );
  }

  Widget _textFieldEmail() {
    return _textFieldForm(
      labeltext: 'correo',
      hintText: 'example@hotmail.com',
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {},
      icon: Icons.email_outlined,
      obscuretext: false,
    );
  }

  Widget _textFieldPassword() {
    return _textFieldForm(
        labeltext: 'Contraseña',
        onChanged: (value) {},
        icon: Icons.lock,
        obscuretext: true,
        hintText: '*******',
        keyboardType: TextInputType.visiblePassword);
  }

  Widget _buttonSignUp() {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(
        'Registrarme :)',
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
      color: Colors.red,
      onPressed: () {},
    );
  }
}

class _textFieldForm extends StatelessWidget {
  final String labeltext;
  final String hintText;
  final Function onChanged;
  final TextInputType keyboardType;
  final IconData icon;
  final bool obscuretext;

  const _textFieldForm({
    @required required this.labeltext,
    required this.hintText,
    @required required this.onChanged,
    required this.keyboardType,
    required this.icon,
    required this.obscuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextField(
          keyboardType: keyboardType,
          obscureText: obscuretext,
          decoration: InputDecoration(
            prefixIcon: Icon(icon),
            labelText: labeltext,
            hintText: hintText,
          ),
          onChanged: (value) {},
        ));
  }
}
