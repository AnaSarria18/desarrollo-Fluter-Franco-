import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(primerProyecto());
}

class primerProyecto extends StatefulWidget {
  const primerProyecto({super.key}); //Constructor

  @override
  State<primerProyecto> createState() => _primerProyectoState();
}

class _primerProyectoState extends State<primerProyecto> {
  String _titulo = "Panel de Control"; 
  Widget _contenido = Text("Bienvenido al Panel de Control"); 

 
  void cambiarContenido(String titulo, Widget contenido) {
    setState(() {
      _titulo = titulo;
      _contenido = contenido;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          foregroundColor: Colors.white,
          title: Text(_titulo), 
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                ),
                child: Text(
                  'Menú',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Panel de Control'),
                onTap: () {
                  cambiarContenido("Panel de Control", Text("Bienvenido al Panel de Control"));
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notificaciones'),
                onTap: () {
                  cambiarContenido("Notificaciones", Text("Aquí están tus Notificaciones"));
                },
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Mis tarjetas registradas'),
                onTap: () {
                  cambiarContenido("Mis tarjetas registradas", Text("Mis Tarjetas Registradas"));
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Compras'),
                onTap: () {
                  cambiarContenido("Compras", Text("Estas son tus Compras"));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración de cuenta'),
                onTap: () {
                  cambiarContenido("Configuración de cuenta", Text("Configuración de Cuenta"));
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: _contenido, 
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
          },
          child: Text("Nuevo"),
        ),
      ),
    );
  }
}