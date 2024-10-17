import 'package:flutter/material.dart';
import 'package:flutter_drawer_listile_1/screen/inicio.dart';

class menuDrawer extends StatefulWidget {
  const menuDrawer({super.key});

  @override
  State<menuDrawer> createState() => _menuDrawerState();
}

class _menuDrawerState extends State<menuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //2. Arquitecto diseña y da la forma
        drawer: Drawer(
          child: Column(
            children: [
              Image(
                image: NetworkImage("https://png.pngtree.com/png-vector/20200403/ourmid/pngtree-e-commerce-world-on-phone-png-image_2173970.jpg")),
              Divider(),
              ListTile(
                title: Text("Inicio"),
                subtitle: Text("Descubre nuestros Productos"),
                trailing:  Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => inicio()));
                },
              ),
              ListTile(title: Text("Mis Pedidos"),
              subtitle: Text("Revisa el estado"),
              trailing: Icon(Icons.arrow_circle_right),
              leading: Icon(Icons.store),
              onTap: () {},

              ),
               ListTile(
                title: Text("Carrito de compras"),
                subtitle: Text("Tus articulos seleccionados"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.shopping_cart),
                onTap: () {},
               ),
               Divider(),
               ListTile(
                title: Text("Cuenta"),
                subtitle: Text("Gestionar Cuenta"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.account_circle),
                onTap: () {},
               )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.brown[300],
          foregroundColor: Colors.white,
          title: Text("Calidad a su servicio"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Compras por Internet"),
              Text("Compras por Internet"),
              Text("Compras por Internet"),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://png.pngtree.com/png-vector/20200403/ourmid/pngtree-e-commerce-world-on-phone-png-image_2173970.jpg"),
              )
              
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:  "Inicio"),
        BottomNavigationBarItem(
          icon: Icon( Icons.phone_android),
          label: "Contactos"),
        BottomNavigationBarItem(
          icon: Icon( Icons.monetization_on),
          label: "Pagos")]),

        floatingActionButton:  
        ElevatedButton(onPressed: () {}, child: Icon(Icons.add)));
  }
}


