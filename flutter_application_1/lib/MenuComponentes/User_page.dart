// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
class UserPage extends StatelessWidget {
  final String name;
  final String image;

  const UserPage({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            FadeInImage(
                fit: BoxFit.cover,
                height: double.infinity,
                fadeInDuration: Duration(milliseconds: 700),
                placeholder: AssetImage('assets/Pajaro.gif'),
                image: AssetImage('assets/perfil/fondo.jpg')),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(top: 50, left: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.pink,
                  size: 40.0,
                ),
              ),
            ),
            Transform.translate(
                offset: Offset(0.0, 500), child: _CardInfoPerfil()),
          ],
        ),
      );

  // ignore: non_constant_identifier_names
  Widget _CardInfoPerfil() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.all(20.0),
      height: 330,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _socialWidgets(),
        SizedBox(
          height: 6.0,
        ),
        _headers('Arnold Monago Martin Chavez', Colors.black, 35),
        SizedBox(
          height: 4.0,
        ),
        _headers('Descripcion', Color.fromARGB(255, 59, 255, 255), 14.0),
        Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              'Hola, me llamo Arnold Monago Martin Chavez, soy egresado de la carrera de ingenieria de Sistemas, actualmente trabajo en Microsoft y en mis pasatiempos suelo jugar y leer libros',
              style: TextStyle(
                  color: Color.fromRGBO(38, 38, 40, 1.0),
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0),
            )),
        _Stats(),
      ]),
    );
  }

  Widget _socialWidgets() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/perfil/perfil.jpg'),
          radius: 40.0,
        ),
        Transform.translate(
          offset: Offset(-20.0, 30.0),
          child: Icon(
            Icons.check_circle,
            color: Colors.green,
          ),
        ),
        Spacer(),
        // ignore: avoid_unnecessary_containers
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            color: Colors.white,
            child: Text(
              'ADD FRIEND',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: Colors.red,
          child: Text(
            'INSTAGRAM',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _headers(String texto, Color color, double fontsize) {
    return Text(texto,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
        ));
  }

  Widget _Stats() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 70.0,
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: Color.fromRGBO(245, 245, 245, 1.0)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                child: Text(
                  'FOLLOWER',
                  style: TextStyle(
                      color: Color.fromARGB(255, 59, 255, 255),
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Center(
                child: Text(
                  '2318',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Column(
            children: [
              Center(
                child: Text(
                  'FRIENDS',
                  style: TextStyle(
                      color: Color.fromARGB(255, 59, 255, 255),
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Center(
                child: Text(
                  '365',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Column(
            children: [
              Center(
                child: Text(
                  'PHOTOS',
                  style: TextStyle(
                      color: Color.fromARGB(255, 59, 255, 255),
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Center(
                child: Text(
                  '172',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          Column(
            children: [
              Center(
                child: Text(
                  'VIAJADOS',
                  style: TextStyle(
                      color: Color.fromARGB(255, 59, 255, 255),
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Center(
                child: Text(
                  '37',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
