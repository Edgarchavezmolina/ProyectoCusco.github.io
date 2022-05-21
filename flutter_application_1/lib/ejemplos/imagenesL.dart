// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_Json.dart/home_son.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class imagenesL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          child: (Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: <Widget>[
              Container(
                height: 200.0,
                width: 600.0,
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'Lugares que te podrian Interesar',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: List.generate(myList.length, (index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 190,
                                  height: 270,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(myList[index]['img']),
                                          fit: BoxFit.cover),
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(6)),
                                );
                              }),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
        ));
  }
}
