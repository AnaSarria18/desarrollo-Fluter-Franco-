//Encapsulamiento

class cuentaBancaria {
  double _saldo; //Indica que la variable es reservada o unicamente se utiliza en esta clase 

  //Constructor
  cuentaBancaria(this._saldo);

  //Metodo para depositar dinero
  void depositarDinero(double monto){
    _saldo +=monto;
  }
  //Metodo para mostrar el saldo
  double getSaldo(){
    return _saldo;
  }
}

void main(){
  var cuenta = cuentaBancaria(1000000);
  cuenta.depositarDinero(500000);
  print("Saldo actual: ${cuenta.getSaldo()}");
}