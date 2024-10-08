//Herencia

class Animal {
  String nombre;

  //Contructor
  Animal(this.nombre);

  //Metodo 
  void hacerSonido(){
    print("$nombre hace un sonido..");
  }
}

//creamos la clase gato que va extender de animal
class Gato extends Animal {
  //Contructor
  Gato(String nombre):super(nombre);


  //Polimorfismo
  @override //Aqui llamo al metodo
  void hacerSonido(){
    print("$nombre, maulla.");
  }

}

void main(){
  var gato = Gato('Santiago'); //Herencia
  gato.hacerSonido();
}

