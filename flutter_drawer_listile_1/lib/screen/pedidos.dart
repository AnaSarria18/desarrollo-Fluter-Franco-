import 'package:flutter/material.dart';

class pedidos extends StatefulWidget {
  const pedidos({super.key});

  @override
  State<pedidos> createState() => _pedidosState();
}

class _pedidosState extends State<pedidos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de pedidos"),
      ),
      body: ListView.builder(
        itemCount: listaPedidos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(listaPedidos[index]['nombreCliente']),
            subtitle: Text(listaPedidos[index]['descripcion']),
            leading: Text(listaPedidos[index]['fechaEntrega']),
            trailing: Icon(Icons.arrow_circle_right),
          );
        },
      ),
    );
  }
}






//////////////// Lista de pedidos ////////////// 
List<Map<String, dynamic>> listaPedidos = [
  {
    'numeroPedido': 101,
    'nombreCliente': 'Juan Perez',
    'descripcion': 'Pedido de camisetas',
    'cantidad': 15,
    'fechaEntrega': '2024-11-01'
  },
  {
    'numeroPedido': 102,
    'nombreCliente': 'Maria Lopez',
    'descripcion': 'Pedido de pantalones',
    'cantidad': 10,
    'fechaEntrega': '2024-11-02'
  },
  {
    'numeroPedido': 103,
    'nombreCliente': 'Carlos García',
    'descripcion': 'Pedido de zapatos',
    'cantidad': 8,
    'fechaEntrega': '2024-11-03'
  },
  {
    'numeroPedido': 104,
    'nombreCliente': 'Ana Martinez',
    'descripcion': 'Pedido de chaquetas',
    'cantidad': 12,
    'fechaEntrega': '2024-11-04'
  },
  {
    'numeroPedido': 105,
    'nombreCliente': 'Luis Sanchez',
    'descripcion': 'Pedido de gorras',
    'cantidad': 20,
    'fechaEntrega': '2024-11-05'
  },
  {
    'numeroPedido': 106,
    'nombreCliente': 'Sofia Rodriguez',
    'descripcion': 'Pedido de bufandas',
    'cantidad': 18,
    'fechaEntrega': '2024-11-06'
  },
  {
    'numeroPedido': 107,
    'nombreCliente': 'Ricardo Fernandez',
    'descripcion': 'Pedido de guantes',
    'cantidad': 25,
    'fechaEntrega': '2024-11-07'
  },
  {
    'numeroPedido': 108,
    'nombreCliente': 'Elena Castro',
    'descripcion': 'Pedido de chaquetas de cuero',
    'cantidad': 5,
    'fechaEntrega': '2024-11-08'
  },
  {
    'numeroPedido': 109,
    'nombreCliente': 'Pablo Muñoz',
    'descripcion': 'Pedido de suéteres',
    'cantidad': 30,
    'fechaEntrega': '2024-11-09'
  },
  {
    'numeroPedido': 110,
    'nombreCliente': 'Lucia Vega',
    'descripcion': 'Pedido de vestidos',
    'cantidad': 22,
    'fechaEntrega': '2024-11-10'
  }
];
