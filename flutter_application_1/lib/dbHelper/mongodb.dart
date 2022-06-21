import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_application_1/MongoDBModel.dart';
import 'package:flutter_application_1/dbHelper/constant.dart';




class MongoDatabase  {
  static var db, userCollection;
  static connect() async{
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    userCollection = db.collection(USER_COLLECTION);
  }

  static Future<String> insert(MongoDbModel data) async {
    try{
      var result = await userCollection.insertOne(data.toJson());
      if(result.isSuccess){
        return " Data Inserted";
      }else {
        return "Something Wrong while inserting data.";
      }
    
    }catch(e){
      print(e.toString());
      return e.toString();
    }
  }


}