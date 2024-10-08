void main() {
  String nombre = "Juan Andres";
  String apellido = "Perez Diaz";
  String NombresCompletos = nombre + "" + apellido;
  String NombresCompletos2 = "Nombres completos: $nombre Apellidos: $apellido";
  double peso = 72.5;
  int edad = 25;
  bool funcionario  = true;



  print(NombresCompletos);
  print(NombresCompletos2);
  print("su peso es: $peso");
  print('su peso es: '+peso.toString());  //Conversion a String
  print('La edad es: ' +(edad +5).toString());
  print('Funcionario: $funcionario');
  print('Funcionario: ${!funcionario}'); //interpolacion negacion de variable
}