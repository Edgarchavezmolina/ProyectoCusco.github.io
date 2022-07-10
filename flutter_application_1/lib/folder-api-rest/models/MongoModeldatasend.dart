// To parse this JSON data, do
//
//     final sendData = sendDataFromJson(jsonString);

import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

SendData sendDataFromJson(String str) => SendData.fromJson(json.decode(str));

String sendDataToJson(SendData data) => json.encode(data.toJson());

class SendData {
    SendData({
        required this.status,
        required this.productos,
    });

    String status;
    List<Producto> productos;

    factory SendData.fromJson(Map<String, dynamic> json) => SendData(
        status: json["status"],
        productos: List<Producto>.from(json["productos"].map((x) => Producto.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "productos": List<dynamic>.from(productos.map((x) => x.toJson())),
    };
}

class Producto {
    String id;
    String image;
    String name;
    String description;

    Producto({
        required this.id,
        required this.image,
        required this.name,
        required this.description,
    });

    

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        id: json["_id"],
        image: json["image"],
        name: json["name"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "image": image,
        "name": name,
        "description": description,
    };
}
