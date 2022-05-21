// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class BasicDesign2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.network(
            "https://th.bing.com/th/id/R.03858019c653304c078a51678bb73fa3?rik=f8cy5DyLCY8iMw&riu=http%3a%2f%2fpix10.agoda.net%2fhotelImages%2f246%2f246832%2f246832_1208191624007249476.jpg%3fs%3d1024x768&ehk=r39QJg8Ttb2D5%2fLV35yvYn%2b455h3C7WqxVD1uzuRzMw%3d&risl=&pid=ImgRaw&r=0"),

        // Titulo
        Title(),

        // Button Section
        ButtonSection(),

        // Description
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'Las habitaciones del Sonesta Hotel Cusco presentan una decoración contemporánea y disponen de TV por cable, WiFi gratuita y baño privado con bañera, el restaurante del Sonesta Hotel Cusco prepara especialidades que fusionan la cocina peruana con la internacional. También hay un bar que ofrece licores regionales, todos los días se sirve un desayuno gratuito, algunas tarifas incluyen el almuerzo o la cena, que cuentan con 2 entrantes a elegir, 1 plato principal y 1 bebida sin alcohol. Nuestros clientes dicen que esta parte de Cuzco es su favorita, según los comentarios independientes.'))
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sonesta Hotel Cusco',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Perú, Cusco', style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('9.1'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CustomButton(icon: Icons.call, text: 'Llamar'),
          CustomButton(icon: Icons.map, text: 'Ubicación'),
          CustomButton(icon: Icons.share, text: 'Compartir'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
          size: 36,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
