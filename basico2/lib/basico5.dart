
void main(){
  //Estructuras de datos en DART

  /* > mayor que
  < menor que 
  != diferencia
  <> diferente
  ! negacion
  % modulo
  == igual
  && y conectar dos condiciones verdaderas
  || o para conectar dos condiciones 1 al menos verdadera
 */

  int edad = 19;
  if (edad>=18) {
    print("Es mayor de edad. Puede votar!");
  }else{
    print("No puede votar(;");
  }


  //Operador Terniario forma de preguntar reduciendo el codigo
  edad>=18?print("Puede votar!!"):print("No puede votar");

  //Ejercicio 1
  String pais = "Salvador";
  String varPais = pais.length >=5? pais.toUpperCase(): pais;
  print(varPais);


  //Ejercicio 3
  int varEdad = 21;

varEdad >= 0 && varEdad<= 5 
  ?print("Infante")
  :varEdad<=13
    ? print("Es un niño")
    : varEdad <= 25
      ? print("Es un Joven")
      : varEdad <= 50
        ? print("Es un adulto")
        : print("Es un adulto mayor");




}