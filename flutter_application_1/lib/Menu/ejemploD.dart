// ignore_for_file: non_constant_identifier_names, duplicate_ignore, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/BotonNRutas/routes.dart';

import 'package:flutter_application_1/componentesMenu/Drawer_Menu.dart';

import 'NavigatorDrawer.dart';

// ignore: use_key_in_widget_constructors

class EjemploD extends StatefulWidget {
  const EjemploD({Key? key}) : super(key: key);

  @override
  State<EjemploD> createState() => _EjemploDState();
}

class _EjemploDState extends State<EjemploD> {
  int index = 0;
  NavInferior? myBNB;

  @override
  void initState() {
    myBNB = NavInferior(currendIndex: (i) {
      setState(() {
        index = i;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        drawer: navigationDrawer(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'AIR PLANTS',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu_book_outlined),
              color: Colors.black,
            );
          }),
        ),
        body: Routes(index: index),
        bottomNavigationBar: myBNB,
      );
}

// ignore: non_constant_identifier_names

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
