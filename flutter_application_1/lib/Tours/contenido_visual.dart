// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ContenidoTours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.only(top: 10),
          elevation: 50.0,
          shadowColor: Colors.blue[300],
          // clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: NetworkImage(
                    'https://media.tacdn.com/media/attractions-splice-spp-360x240/06/6c/7e/d9.jpg'),
              ),
              Container(
                child: Text(
                  'Machu Picchu durante este viaje de un día con todo incluido desde Cusco. Descubra este famoso sitio Inca en la cima de la montaña con una guía, y aprenda sobre su construcción, historia y cómo era la vida cotidiana de sus residentes.',
                  textAlign: TextAlign.center,
                ),
                padding: EdgeInsets.all(10),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.only(top: 10),
          elevation: 50.0,
          shadowColor: Colors.blue[300],
          // clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: NetworkImage(
                    'https://media.tacdn.com/media/attractions-splice-spp-674x446/07/b2/d8/db.jpg'),
              ),
              Container(
                child: Text(
                  'Rodearse de naturaleza y sumergirse en los fascinantes misterios que encierra esta maravillosa ciudadela Inca.',
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
