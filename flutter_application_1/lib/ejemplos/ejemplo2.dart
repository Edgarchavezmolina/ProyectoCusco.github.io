// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class Cabecera extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // ignore: prefer_const_declarations
    final subname = 'Viaje Seguro';
    // ignore: prefer_const_declarations
    final name = 'Air Plants';

    return InkWell(
      child: Container(
        height: size.height * 0.4,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/CiudadDeCusco.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.srcOver)),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                'En AIR PLANTS nos preocupamos por tu seguridad',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: Offset(0, 10))
                    ]),
                textAlign: TextAlign.center,
              ))
            ],
          ),
          SizedBox(
            height: 60,
          )
        ]),
      ),
    );
  }
}
