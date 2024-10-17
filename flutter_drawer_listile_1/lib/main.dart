import 'package:flutter/material.dart';
import 'package:flutter_drawer_listile_1/screen/menuDrawer.dart';

void main(List<String> args) {
  runApp(firstApp());
}

class firstApp extends StatefulWidget {
  const firstApp({super.key});

  @override
  State<firstApp> createState() => _firstAppState();
}

class _firstAppState extends State<firstApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //mide el tamaño del area construccion
      debugShowCheckedModeBanner: false,
      title: "Comercio Electronico",
      home: menuDrawer());
  }
}
