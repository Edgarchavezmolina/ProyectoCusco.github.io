import 'package:flutter/material.dart';
import 'package:flutter_application_1/Restaurantes/N_1%20componentes/barra1.dart';

class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // ignore: unnecessary_this
        this.cabecera(),
        this.inforest(),
        this.nostros(),
        this.botonera(),
      ],
    );
  }

  Widget cabecera() {
    return Stack(
      children: <Widget>[
        Image.network(
          'https://media-cdn.tripadvisor.com/media/photo-s/0b/45/98/72/bistecca-di-tonno.jpg',
          height: 350,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(95, 250, 250, 250),
            Color.fromARGB(188, 131, 183, 184)
          ])),
        ),
        SafeArea(child: barra()),
      ],
    );
  }

  Widget inforest() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Nosotros',
          style: TextStyle(color: Color.fromARGB(185, 2, 2, 2), fontSize: 20),
        ),
        Icon(Icons.person),
      ],
    );
  }

  Widget nostros() {
    return ListTile(
      title: Text(
        'Un restaurante desinhibido que lee el Pacífico y rescata los más frescos productos de temporada. La cocina tiene la misma profundidad de Rafael, técnica impecable y mirada global. El restaurante busca ser una sublimación de la cevichería peruana, con puentes tendidos hacia los cuatro puntos cardinales, y referencias de otras cocinas del mundo como gyozas, tacos y curris. La coctelería  tiene aquí gran protagonismo, y llama al sol todo el año. El restaurante abre solo de día, como las cevicherías más emblemáticas de la ciudad, lo cual le otorga esa aura de terraza permanente, con atmósfera de playa entre el mediodía y el atardecer.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Color.fromARGB(150, 0, 0, 0)),
      ),
    );
  }

  Widget botonera() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton.icon(
              onPressed: () {},
              color: Color.fromARGB(255, 158, 74, 74),
              shape: StadiumBorder(),
              icon: Icon(
                Icons.table_restaurant,
                color: Colors.white,
              ),
              label: Text(
                'Reserva una mesa',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
