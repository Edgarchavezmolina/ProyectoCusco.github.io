// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class Cabecera extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final subname = 'Viaje Seguro';
    // ignore: prefer_const_declarations
    final name = 'Air Plants';

    return InkWell(
      child: Container(
        alignment: AlignmentDirectional.bottomEnd,
        padding: Padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: [
            Image.asset(
              'assets/Discoverid.png',
              width: 250,
              height: 250,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subname,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  name.toUpperCase(),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 24,
              backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              child: Icon(Icons.add_comment_outlined, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
