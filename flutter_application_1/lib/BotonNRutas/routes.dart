import 'package:flutter/material.dart';
import 'package:flutter_application_1/BotonNRutas/Comentarios.dart';
import 'package:flutter_application_1/BotonNRutas/Inicio.dart';
import 'package:flutter_application_1/BotonNRutas/Vuelos.dart';
import 'package:flutter_application_1/MenuComponentes/Notificaciones.dart';

import 'Tours.dart';
import 'Viajes.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Inicio(),
      const Hotel(),
      const Viajes(),
      const Vuelos(),
       ComenTours(),
    ];
    return myList[index];
  }
}
