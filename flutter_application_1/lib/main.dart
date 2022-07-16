// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Menu/ejemploD.dart';
import 'package:flutter_application_1/app_SQLite/Barcode.dart';
import 'package:flutter_application_1/dbHelper/mongodb.dart';
import 'package:flutter_application_1/src/Login.dart';
import 'package:flutter_application_1/src/LoginPrincipal.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/src/LoginRegistro.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App Air Plants',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EjemploD(),
    );
  }
}
