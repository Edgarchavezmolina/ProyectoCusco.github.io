// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'N_1 componentes/principio.dart';

class Restrafa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Restaurantes Favoritos',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 249, 254, 253),
        ),
        backgroundColor: Color.fromARGB(255, 249, 254, 253),
        body: Column(
          children: <Widget>[principal()],
        ));
  }
}
