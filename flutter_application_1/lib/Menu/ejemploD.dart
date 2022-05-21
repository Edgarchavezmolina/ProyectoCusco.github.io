// ignore_for_file: non_constant_identifier_names, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentesMenu/Drawer_Menu.dart';

import 'package:flutter_application_1/ejemplos/ejemplo2.dart';
import 'package:flutter_application_1/ejemplos/imagenesC.dart';
import 'package:flutter_application_1/ejemplos/imagenesL.dart';

import '../ejemplos/ImagenM.dart';

// ignore: use_key_in_widget_constructors
class EjemploD extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      drawer: navigationDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(Icons.menu_book_outlined),
            color: Colors.black,
          );
        }),
      ),
      body: ListView(
        children: <Widget>[
          Cabecera(),
          buscador(),
          SizedBox(
            height: 30,
          ),
          ItemCuadrado(),
          SizedBox(
            height: 20,
          ),
          imagenesL(),
          SizedBox(
            height: 20,
          ),
          ImagenMAC(),
        ],
      ),
      bottomNavigationBar: navInferior());
}

BottomNavigationBar navInferior() {
  int index = 0;
  return BottomNavigationBar(
    currentIndex: index,
    onTap: (int i) {
      index = i;
    },
    backgroundColor: Colors.white,
    selectedItemColor: Colors.purple,
    unselectedItemColor: Colors.black,
    type: BottomNavigationBarType.fixed,

    // ignore: prefer_const_literals_to_create_immutables
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_max),
        label: 'Inicio',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home_max),
        label: 'Tours',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.hotel_class_sharp),
        label: 'Viajes',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.login_outlined),
        label: 'Listas',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu_book_outlined),
        label: 'Preferidos',
      ),
    ],
  );
}

// ignore: non_constant_identifier_names

Widget buscador() {
  // ignore: prefer_const_declarations
  final color = Colors.blue;

  return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
          // ignore: prefer_const_constructors
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          hintText: 'Buscar',
          hintStyle: TextStyle(color: color),
          prefixIcon: Icon(
            Icons.search,
            color: color,
          ),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: color.withOpacity(0.7)))));
}

Widget listaIcon(String titulo, Widget item, int cantidad) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Text(
          titulo,
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
      // ignore: sized_box_for_whitespace
      Container(
        height: 200.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cantidad,
          itemBuilder: (context, index) {
            return item;
          },
        ),
      ),
    ],
  );
}
