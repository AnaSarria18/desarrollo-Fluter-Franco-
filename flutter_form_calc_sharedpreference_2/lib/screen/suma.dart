import 'package:flutter/material.dart';

class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

class _sumaState extends State<suma> {
  // Aqui va la parte logica
  final TextEditingController _number1 = TextEditingController();
  final TextEditingController _number2 = TextEditingController();
  double _resultado = 0.0;

  void _calcularSuma() {
    // El texto ingresado _number1 lo estoy pasando a un nuero de tipo double si falla se le agrega por defecto el 0
    double number1 = double.tryParse(_number1.text) ?? 0.0;
    double number2 = double.tryParse(_number2.text) ?? 0.0;

    setState(() {
      _resultado = number1 + number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Transform.translate(
          offset: Offset(0, 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/4270/4270605.png",
                height: 20,
              ),
              SizedBox(width: 10),
              Text("Sumar")
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Digite los numeros: ",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
            ),
            SizedBox(height: 20),
            TextFormField(
              //Agregar la propiedad controller
              controller: _number1,
              decoration: InputDecoration(
                  labelText: 'primer numero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(height: 20),
            TextFormField(
              //Agregar la propiedad controller
              controller: _number2,
              decoration: InputDecoration(
                  labelText: 'segundo numero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _calcularSuma();
              },
              child: Text(
                'calcular',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50)),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: $_resultado',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
