import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text(name),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
      );
}
