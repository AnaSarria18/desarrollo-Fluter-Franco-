class Empleado {
  // Atributos de la clase
  String nombre;
  String posicion;
  double salarioMensual;

  // Constructor para inicializar los atributos
  Empleado(this.nombre, this.posicion, this.salarioMensual);

  // Método para calcular el salario anual
  double calcularSalarioAnual() {
    return salarioMensual * 12; 
  }

  // Método para mostrar la información del empleado
  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Posición: $posicion');
    print('Salario mensual: \$${salarioMensual.toStringAsFixed(2)}');
    print('Salario anual: \$${calcularSalarioAnual().toStringAsFixed(2)}');
  }
}


void main() {
  // Crear una instancia de la clase Empleado
  Empleado empleado1 = Empleado('Sofia Perez', 'Medica General', 1350000);

  // Mostrar la información del empleado y su salario anual
  empleado1.mostrarInformacion();
}
