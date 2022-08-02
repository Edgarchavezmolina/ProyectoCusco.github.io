import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../folder-obtener-api-rest/modelo3.dart';



class ProductoProvider extends ChangeNotifier{

   String  _baseUrl = '192.168.1.14:3999';

  List<Producto> listaProductos = [ 

  ];
  

  ProductoProvider(){
    print('Ingresando a ProductoProvider');
    this.getOnProductoList();
  }

  void getOnProductoList() async{

    var url = Uri.http(_baseUrl, '/api/productos',{});
    final response = await http.get(url);
    print(response.body);
    final productoResponse = MongoDbModel.fromJson(response.body);
    listaProductos = productoResponse.productos;
    notifyListeners();

  }

}