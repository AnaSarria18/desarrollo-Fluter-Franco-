import 'package:flutter/material.dart';

class inicio extends StatefulWidget {
  const inicio({super.key});

  @override
  State<inicio> createState() => _inicioState();
}

class _inicioState extends State<inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.amber[400],
        backgroundColor: Colors.white,
        title: Text("E Commerce"),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Image.network("https://www.shutterstock.com/image-vector/cv-dots-bubbles-letters-circle-260nw-2073951833.jpg",height: 150, width: 150),
            SizedBox(height: 16),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Articulo 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.favorite_border),
            ],
            ),
            SizedBox(height: 8,),
            Text(
              "Bienvenidos a la Tienda de Comercio Electronico E comerce donde encontrara articulos para todos los integantes de la familia"),
              SizedBox(height: 8),
              Text("Con flader puedes crear unterfaces atractivas y rapidas gracias a su ampia gama de Widgets",
              style: TextStyle(fontSize: 16),

              ),
              SizedBox(height: 8),

         ],
      ),
    );
  }
}