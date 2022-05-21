// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, duplicate_ignore, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Hoteles/basic_design.dart';
import 'package:flutter_application_1/MenuComponentes/User_page.dart';
import 'package:flutter_application_1/Restaurantes/resct.dart';
import 'package:flutter_application_1/Tours/tours.dart';
import 'package:flutter_application_1/src/Login.dart';

import '../MenuComponentes/Fechas.dart';
import '../MenuComponentes/Notificaciones.dart';
import '../MenuComponentes/People.dart';
import '../MenuComponentes/Plugings.dart';
import '../MenuComponentes/WorkShop.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class navigationDrawer extends StatelessWidget {
  // ignore: prefer_const_constructors
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final name = 'Faraon';
    final email = 'cunumi@abc.com';
    final image = 'assets/Faraon.jpg';

    return Drawer(
      child: Material(
        // ignore: prefer_const_constructors
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              image: image,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: name,
                  image: image,
                ),
              )),
            ),
            const SizedBox(height: 16),
            Container(
              padding: Padding,
              child: Column(children: [
                const SizedBox(
                  height: 12,
                ),
                buildSearchField(),
                const SizedBox(
                  height: 20,
                ),
                buildMenuItem(
                    text: 'people Tours',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0)),
                const SizedBox(height: 16),
                buildMenuItem(
                    text: 'My Favorite',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1)),
                const SizedBox(height: 16),
                buildMenuItem(
                    text: 'Hoteles',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2)),
                const SizedBox(height: 16),
                buildMenuItem(
                    text: 'Fechas',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3)),
                const SizedBox(
                  height: 24.0,
                ),
                Divider(color: Colors.white70),
                const SizedBox(
                  height: 24.0,
                ),
                const SizedBox(height: 16),
                buildMenuItem(
                    text: 'Pluging',
                    icon: Icons.login_sharp,
                    onClicked: () => selectedItem(context, 4)),
                const SizedBox(height: 16),
                buildMenuItem(
                    text: 'Notificaciones',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 5)),
                const SizedBox(height: 16),
                buildMenuItem(
                    text: 'Login',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 6)),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    // ignore: prefer_const_declarations
    final color = Colors.white;
    // ignore: prefer_const_declarations
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    //Te regresa al menu principal :)
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ToursPeru()));
        break;

      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Restrafa()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => BasicDesignScreen()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Fechas()));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Plugings()));
        break;
      case 5:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Notificaciones()));
        break;
      // ignore: no_duplicate_case_values
      case 6:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginMenu()));
        break;
    }
  }

  buildHeader(
          {required String image,
          required String name,
          required String email,
          required VoidCallback onClicked}) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: Padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(image)),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
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

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
        style: TextStyle(color: color),
        decoration: InputDecoration(
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
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: color.withOpacity(0.7)),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: color.withOpacity(0.7)))));
  }
}
