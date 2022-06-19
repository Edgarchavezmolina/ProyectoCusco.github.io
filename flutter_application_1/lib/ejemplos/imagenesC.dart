// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_Json.dart/home_son.dart';

class ItemCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: (Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: <Widget>[
              Row(
                  children: List.generate(logos.length, (index) {
                return Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 03),
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(logos[index]['img']),
                            fit: BoxFit.cover),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black, width: 3.0)));
              })),
            ],
          )),
        ));
  }
}
