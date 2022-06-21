// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Menu/ejemploD.dart';
import 'package:flutter_application_1/dbHelper/mongodb.dart';

void main() async{
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
      home: const EjemploD(),
    );
  }
}


