import 'package:flutter/material.dart';
import 'package:flutter_form_calc_sharedpreference_2/screen/suma.dart';

class menuOption extends StatefulWidget {
  const menuOption({super.key});

  @override
  State<menuOption> createState() => _menuOptionState();
}

class _menuOptionState extends State<menuOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        foregroundColor: Colors.white,
        title: Text("Menu de opciones"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 16),
          Image.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-hand-drawn-style-math-stationery-elements-png-image_5364500.jpg", 
          height: 280,
          width: 200,
          ),
          SizedBox(height: 10),
          Card(child: ListTile(
            title: Text("Suma"),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => suma()));
            },
          ),
         ),

          SizedBox(height: 10),
          Card(child: ListTile(
            title: Text("Calculadora"),
            leading: Icon(Icons.calculate),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {},
          ),
         ),

          
          SizedBox(height: 10),
          Card(child: ListTile(
            title: Text("Registro"),
            leading: Icon(Icons.account_circle_sharp),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {},
          ),
         ),

          
          SizedBox(height: 10),
          Card(child: ListTile(
            title: Text("Login"),
            leading: Icon(Icons.add_card_outlined),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {},
          ),
         )
        ],
      ),
    );
  }
}