import 'package:flutter/material.dart';

class NavInferior extends StatefulWidget {
  final Function currendIndex;
  const NavInferior({Key? key, required this.currendIndex}) : super(key: key);

  @override
  State<NavInferior> createState() => _NavInferiorState();
}

class _NavInferiorState extends State<NavInferior> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: index,
      onTap: (int i) {
        setState(() {
          index = i;
          widget.currendIndex(i);
        });
      },
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,

      // ignore: prefer_const_literals_to_create_immutables
      items: const [
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
          label: 'Destinos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.touch_app_sharp),
          label: 'Vuelos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.comment),
          label: 'Comentarios',
        ),
      ],
    );
  }
}
