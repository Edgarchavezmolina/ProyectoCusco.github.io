// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.network(
            "https://www.turiweb.pe/wp-content/uploads/2020/02/xima-cusco1-120220.jpg"),

        // Titulo
        Title(),

        // Button Section
        ButtonSection(),

        // Description
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
                'El Xima Cusco Hotel ofrece habitaciones modernas con desayuno buffet incluido, todas las habitaciones están equipadas con TV LCD de pantalla plana por cable, Algunas tienen balcón. También hay conexión a internet por cable gratuita en todas las instalaciones. Además, el Xima Cusco Hotel alberga un spa donde se ofrecen tratamientos especiales y masajes relajantes en un ambiente único, El spa dispone además de sauna, bañera de hidromasaje y sala de oxígeno especial. Este hotel cuenta con la cafetería Atrium, decorada con fuentes preciosas. Nuestros clientes dicen que es su lugar favorito, teniendo una gran calificación de 8,5 de viajes para dos personas.'))
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
                'Hotel Xima Exclusive Cusco',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Perú, Cusco', style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('8.5'),
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
