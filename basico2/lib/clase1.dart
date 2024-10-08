//Clases y Objetos
class Persona {
  //Atributos o Variables
  String nombre;
  int edad;

  //Constructor
  Persona(this.nombre, this.edad);


  //Metodo
  void mostrarPersona(){
    print("Nombre: $nombre, Edad: $edad");
  }
}


void main(){
  //Crear instancias u Objetos
  var persona1 = Persona('Julio', 20);
  persona1.mostrarPersona();

}