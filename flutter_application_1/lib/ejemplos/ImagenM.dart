// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_Json.dart/home_son.dart';

class ImagenMAC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.only(top: 10),
          elevation: 50.0,
          //clipBehavior: Clip.antiAlias,
          shadowColor: Color.fromARGB(255, 246, 212, 100),
          // clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ignore: prefer_const_constructors
              Image(image: AssetImage('assets/MacchuPicchu.jpg')),
              Container(
                // ignore: prefer_const_constructors
                child: Text(
                  'Machu Picchu durante este viaje de un día con todo incluido desde Cusco. Descubra este famoso sitio Inca en la cima de la montaña con una guía, y aprenda sobre su construcción, historia y cómo era la vida cotidiana de sus residentes.',
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(10),
              )
            ],
          ),
        ),
      ],
    );
  }
}
