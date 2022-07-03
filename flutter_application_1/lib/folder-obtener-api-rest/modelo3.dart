// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);


import 'package:flutter/foundation.dart';
import 'dart:convert';


class MongoDbModel {
    List<Producto> productos;

    MongoDbModel({
        required this.productos,
    });



    factory MongoDbModel.fromMap(Map<String, dynamic> json) => MongoDbModel(
        productos: List<Producto>.from(
          json["productos"].map((x) => Producto.fromJson(x))),
    );

    factory MongoDbModel.fromJson(String str) => MongoDbModel.fromMap(json.decode(str));

}

class Producto {
    Producto({
        required this.id,
        required this.productoId,
        required this.firstName,
        required this.lastName,
        required this.address,
    });

    Object id;
    Object productoId;
    String firstName;
    String lastName;
    String address;

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        id: json["_id"],
        productoId: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        address: json["address"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "id": productoId,
        "firstName": firstName,
        "lastName": lastName,
        "address": address,
    };
}