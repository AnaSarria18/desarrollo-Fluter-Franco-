void main() {
  //MAP
  Map<int, String> datos2 ={
    21: 'German', //No necesariamente tiene que estar la clave en orden
    10: "Octubre",
    80: 'America'
  };
  print(datos2);
  print(datos2[80]); //Para imprimir un dato hago referencia a su clave


  Map<String, dynamic> persona ={
    'Nombre': 'Carlos',
    'Apellido': 'Perez',
    'Edad': 21,
    'Estatura': 1.90,
    'correo': 'carlos@gmail.com'
  };

  print(persona);


  List persona2=[
    {
    'Nombre': 'Carlos',
    'Apellido': 'Perez',
    'Edad': 21,
    'Estatura': 1.90,
    'correo': 'carlos@gmail.com'
  },
  {
    'Nombre': 'Sofia',
    'Apellido': 'Perea',
    'Edad': 26,
    'Estatura': 1.60,
    'correo': 'sofia@gmail.com'
  },
  {
    'Nombre': 'Eduar',
    'Apellido': 'Arce',
    'Edad': 30,
    'Estatura': 1.75,
    'correo': 'eduar@gmail.com'
  },
  ];

  print(persona2);
  print(persona2[1]);
  print(persona2[1]["Apellido"]);

  
  //Para imprimir toda la lista si debo utilizar un ciclo ya sea for
  print('Impresion de toda la lista:');
  for (var per in persona2) {
    print(persona2);
  }
}

