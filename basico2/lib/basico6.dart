void main() {
  //Existen 4 tipos de funciones
  //1. Reciben valores y retornan valores
  //2. No reciben valores y retornan valores
  //3. No recibe valores y tampoco retorna valores
  //4. Reciben valores y no retornan valores


 /*  EJEMPLOS DE CADA UNA  */


  //3.No recibe valores y tampoco retorna valores
  void saludar(){
    print("Hola Aprendices!");
  }
  saludar();



   //2. No reciben valores y retornan valores
  String saludar2(){
    return "Hola";
  }
  saludar2();
  print(saludar2());




   //1.Reciben valores y retornan valores
  String saludar3(String nombre){
    return "Hola, $nombre";
  }
  print(saludar3("Juan Carlos"));




   //4. Reciben valores y no retornan valores
   void saludar4(String nombre){
    print("Hola: $nombre");
   }
   saludar4("Julian");
}


