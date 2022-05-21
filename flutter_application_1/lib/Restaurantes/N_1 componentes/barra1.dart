// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class barra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/logorafa.png',
          width: 100,
        ),
        Text(
          'Carta',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        Text(
          'Nosotros',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        Text(
          'Ubicanos',
          style: TextStyle(color: Colors.black, fontSize: 16),
        )
      ],
    );
  }
}
