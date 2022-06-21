// import 'dart:convert';

// import 'package:flutter_application_1/connectApi-Rest/producto.dart';


// import 'package:flutter/foundation.dart';

// class ProductoResponse {
//   List<Producto> productos;

//   ProductoResponse({
//     required this.productos
//   });

//   factory ProductoResponse.fromMap(Map<String, dynamic> json) => ProductoResponse(
//     productos: List<Producto>.from(
//       json["productos"].map((x)=> Producto.fromJson(x)),
//     ),
//     );
  
//   factory ProductoResponse.fromJson(String str) => ProductoResponse.fromMap(json.decode(str));

// }