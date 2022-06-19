import 'package:flutter/material.dart';
import 'package:flutter_application_1/BotonNRutas/Comentarios.dart';
import 'package:flutter_application_1/BotonNRutas/Inicio.dart';
import 'package:flutter_application_1/BotonNRutas/Vuelos.dart';

import 'Tours.dart';
import 'Viajes.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Inicio(),
      const Tours(),
      const Viajes(),
      const Vuelos(),
      const Comentarios(),
    ];
    return myList[index];
  }
}
