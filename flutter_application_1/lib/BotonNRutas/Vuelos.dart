import 'package:flutter/material.dart';

class Vuelos extends StatefulWidget {
  const Vuelos({Key? key}) : super(key: key);

  @override
  _VuelosState createState() => _VuelosState();
}

class _VuelosState extends State<Vuelos> {
  List places = [
    {
      'imagen': 'imagen2.jpg',
      'ima': 'imagen3.jpg',
      'nombre': 'Cusco, Peru',
      'precio': '1245',
      'nom': 'Catedral de Cusco',
      'descripcion':
          'Es uno de los más hermosos y significativos monumentos de América. Construida entre los años 1560 y 1664 sobre el Quishuarqancha, antiguo palacio del inca Huiracocha'
    },
    {
      'imagen': 'imagen4.jpg',
      'ima': 'imagen5.jpg',
      'nombre': 'Cusco, Peru',
      'nom': 'Ruinas del Sacsayhuaman',
      'precio': '2734',
      'descripcion':
          'Visitar la fortaleza de Sacsayhuamán (vocablo quechua que significa halcón satisfecho), uno de los complejos arqueológicos más importantes del Imperio Incaico.'
    },
    {
      'imagen': 'imagen6.jpg',
      'ima': 'imagen7.jpg',
      'nombre': 'Cusco, Peru',
      'nom': 'Iglesia San Blass',
      'precio': '1534',
      'descripcion':
          'Aguas Calientes, denominada Machu Picchu-Pueblo para diferenciarla de la zona arqueológica, es una localidad peruana capital del distrito de Machupicchu, ubicado en la provincia de Urubamba en el departamento del Cuzco.'
    },
    {
      'imagen': 'imagen8.jpg',
      'ima': 'imagen9.jpg',
      'nombre': 'Cusco, Peru',
      'nom': 'Montaña de Colores',
      'precio': '1304',
      'descripcion':
          'La montaña de 7 colores o montaña arcoíris llamada así por su aspecto tan peculiar, es uno de los destinos mas visitado de Cusco gracias a su hermoso paisaje'
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: const AssetImage('assets/img/imagen1.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.srcOver)),
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.only(
                        bottomRight: const Radius.circular(10),
                        // ignore: prefer_const_constructors
                        bottomLeft: Radius.circular(10))),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                          // ignore: prefer_const_constructors
                          child: Text(
                        'Encuentra vuelos hasta un 50%  para tu proximo viaje',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 34,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  blurRadius: 10,
                                  offset: Offset(0, 10))
                            ]),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 40,
                  )
                ]),
              ),
            ],
          ),
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Vuelos a todo destino",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var data in places)
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 250,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    ClipRect(
                                      child: Image.asset(
                                        'assets/img/' + data['imagen'],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              topRight: Radius.circular(8))),
                                      child: Text(
                                        data['precio'] + 'USD',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  data['nombre'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )
                              ]),
                        ),
                      )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Más destinos',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )),
              for (var data in places)
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/img/' + data['ima']),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                data['nom'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                data['descripcion'],
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Reserva ya!'))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Text(
                            data['precio'] + 'USD',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))
                    ],
                  ),
                )
            ],
          ))
        ],
      ),
    );
  }
}
