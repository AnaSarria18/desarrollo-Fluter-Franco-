import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(primerProyecto());
}

class primerProyecto extends StatefulWidget {
  const primerProyecto({super.key});  //Constructor

  @override  //LLama a un metod de una clase
  State<primerProyecto> createState() => _primerProyectoState();
}

class _primerProyectoState extends State<primerProyecto> {
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Text("Menu Drawer"),
        endDrawer: Text("Menu Home"),
         appBar: AppBar(
          backgroundColor: Colors.blue[300],
          foregroundColor: Colors.white,
          title: Text("Centro de Formacion"),
        ),
        body: Column(children: [
               Text("Centro de Teleinformatica y Produccion Industrial"),
               Text("Centro de Teleinformatica y Produccion Industrial"),
               Text("Centro de Teleinformatica y Produccion Industrial"),
               Text("Centro de Teleinformatica y Produccion Industrial"),
               Text("Centro de Teleinformatica y Produccion Industrial"),
               Text("Centro de Teleinformatica y Produccion Industrial"),
               Text("Centro de Teleinformatica y Produccion Industrial"),
             ],
          ),
          floatingActionButton: ElevatedButton(onPressed: () {

          }, child: Text("Nuevo")),
        ));
      }
}
