// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tours/Slider.dart';
import 'package:flutter_application_1/Tours/contenido_visual.dart';

// ignore: unused_import

// ignore: use_key_in_widget_constructors
class ToursPeru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tours')),
      backgroundColor: Colors.blue[300],
      body: Center(
        child: ListView(
          children: [Sksl(), Tours1(), ContenidoTours()],
        ),
      ),
    );
  }
}

Widget Tours1() {
  return Column(
    children: [
      Card(
        margin: EdgeInsets.only(top: 50),
        elevation: 50.0,
        shadowColor: Colors.blue[300],
        // clipBehavior: Clip.antiAlias,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: NetworkImage(
                  'https://media.tacdn.com/media/attractions-splice-spp-360x240/07/79/08/1b.jpg'),
            ),
            Container(
              child: Text(
                'Pase un día explorando la ciudadela inca de Machu Picchu durante este viaje de un día con todo incluido desde Cusco. Descubra este famoso sitio Inca en la cima de la montaña con una guía, y aprenda sobre su construcción, historia y cómo era la vida cotidiana de sus residentes.',
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(10),
            )
          ],
        ),
      )
    ],
  );
}
