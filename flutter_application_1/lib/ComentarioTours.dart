import 'package:flutter/material.dart';
import 'package:flutter_application_1/connectApi-Rest/modelo3.dart';

import 'package:flutter_application_1/producto_provider.dart';
import 'package:provider/provider.dart';

class ComenTours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductoProvider(),
          lazy: false,
        )
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    final productoProvider = Provider.of<ProductoProvider>(context);
    final List<Producto> productos = productoProvider.listaProductos;

    
    return Scaffold(
        
      appBar: AppBar(
        title: Text('Comentarios..'),
      ),
      body: ListView.builder( 
        itemCount: productos.length,
        itemBuilder: (BuildContext context,int index) {
        return ListTile(
          title: Text(productos[index].firstName,
          style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          
          ),
          subtitle: Text('s/.'+productos[index].lastName,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.indigo),
          ),
          leading: Icon(Icons.account_circle_rounded),
          
        );
      }),
    );
  }
}