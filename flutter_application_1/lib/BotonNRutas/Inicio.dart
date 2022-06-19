// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/buscador/search.dart';

import 'package:flutter_application_1/ejemplos/ejemplo2.dart';
import 'package:flutter_application_1/ejemplos/imagenesC.dart';
import 'package:flutter_application_1/ejemplos/imagenesL.dart';

import '../ejemplos/ImagenM.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: <Widget>[
            Cabecera(),
            SizedBox(
              height: 30.0,
            ),
            Search(),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30,
            ),
            ItemCuadrado(),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            imagenesL(),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
            ImagenMAC(),
          ],
        ),
      );
}
