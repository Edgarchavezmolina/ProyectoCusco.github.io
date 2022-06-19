import 'package:flutter/material.dart';
import 'package:flutter_application_1/BotonNRutas/models/Destinos.dart';

import 'ViajesScreen/ViajesScreen.dart';

class Viajes extends StatefulWidget {
  const Viajes({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Viajes();
}

class _Viajes extends State<Viajes> {
  int _index = 0;
  // ignore: prefer_final_fields, unused_field
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Explora',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  const Icon(
                    Icons.notifications,
                    size: 30,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    hintText: 'Where to go next?',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 250,
              child: PageView.builder(
                  itemCount: destinations.length,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (context, i) {
                    return Transform.scale(
                      scale: i == _index ? 1.0 : 0.9,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DestinationScreen(
                                    destination: destinations[i],
                                  )));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height - 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(destinations[i].image),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(2, 3),
                                    )
                                  ]),
                            ),
                            Text(
                              destinations[i].name,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
