// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_1/BotonNRutas/models/HotelImage.dart';

class Hotel extends StatefulWidget {
  const Hotel({Key? key}) : super(key: key);

  @override
  _hotel createState() => _hotel();
}

class _hotel extends State<Hotel> {
  List<String> urls = [
    'https://t-cf.bstatic.com/xdata/images/hotel/270x200/202652690.jpg?k=5afd4df6ce7ddbc9de9143ee84f6cad0e5eb7416d934b4fa5a1c2f406ef20553&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/270x200/350378246.jpg?k=31ccce1715e8a74f31f74681f01aa2f6479cdae54e27cc2b0460157701f454e7&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/270x200/220577783.jpg?k=f72dd00afbe94e8d729b1caf264a9557ebbc65f78c21c53d67420c488b57e2ca&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/270x200/103554136.jpg?k=4e563bf73009006c18b751e6e60a51b9838201da0b8475f1742d7790c48f7770&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/270x200/328130428.jpg?k=dfcc3189aa7011715d2cce45d365a649d837b50c7ca6d725e7e7cd68099cd0cc&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/270x200/314682087.jpg?k=57f6932c1c67530eeb26749d962dc3a7ff0f076d6fe0c018a9001f41a123189f&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/270x200/204996454.jpg?k=9230231106a42ee478e53faee243222e6962506e7f404fa09ac8f0dc9c0ab335&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/square600/203154649.jpg?k=736af617d39fa3044c411f33794b3918fca7d3e6b1179d1b26a6642b43ed3e5c&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/square600/42980148.jpg?k=4a7dc0f63d2989d1d8609b7fda9d9b9752769e43aea542ea5b0b81b3dd562966&o=',
    'https://t-cf.bstatic.com/xdata/images/hotel/square600/114021176.jpg?k=424ec3d5f01b9f6fd4e6f3e8c530b841e3f9cd240abbb5299efcb951c59667f7&o='
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bienvenido al area de hoteles',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Tu Hospedaje te espera',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color.fromARGB(139, 98, 85, 85),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    hintText: 'Busca un hospedaje cerca tuyo...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 30.0),
            DefaultTabController(
              length: 3,
              child: Expanded(
                  child: Column(
                children: [
                  TabBar(
                    indicatorColor: Color(0xFFFE8C68),
                    unselectedLabelColor: Color(0xFF555555),
                    labelColor: Color(0xFFFE8C68),
                    labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    tabs: [
                      Tab(text: 'Trending'),
                      Tab(
                        text: 'Promociones',
                      ),
                      Tab(
                        text: 'Favorites',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 300.0,
                    child: TabBarView(children: [
                      Container(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotelcard(
                                urls[0], 'Antigua Casona Hotel', 'Cusco', 5),
                            hotelcard(
                                urls[1], 'Casona Corrales Hotel', 'Cusco', 4),
                            hotelcard(urls[2], 'Aranwa  Hotel', 'Cusco', 4),
                            hotelcard(urls[3], 'JW Marriott Hotel', 'Cusco', 5),
                          ],
                        ),
                      ),
                      Container(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotelcard(urls[4], 'Palacio Inka', 'Cusco', 4),
                            hotelcard(urls[5], 'Jose Antonio', 'Cusco', 5),
                            hotelcard(
                                urls[6], 'Palacio Manco Capac', 'Cusco', 4),
                            hotelcard(
                                urls[7], 'La Posada de Francisca', 'Cusco', 5),
                          ],
                        ),
                      ),
                      Container(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            hotelcard(urls[8], 'Sacred Valley', 'Cusco', 4),
                            hotelcard(urls[9], 'Inkaterra Hacienda Urubamba',
                                'Cusco', 5),
                          ],
                        ),
                      )
                    ]),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
