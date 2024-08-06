class Empleado {
  String nombre = "";
  int edad = 0;
  double salario = 0;
  String puesto = "";
  String tipoContrato = "";

  Empleado(String nombre, int edad, double salario, String puesto,
      String tipoContrato) {
    this.nombre = nombre;
    this.edad = edad;
    this.salario = salario;
    this.puesto = puesto;
    this.tipoContrato = tipoContrato;
  }

  void aumentarSalario(double porcentaje) {
    double valorPorcentaje = this.salario * (porcentaje / 100);
    this.salario = valorPorcentaje + this.salario;
    print(
        "El empleado $nombre que ocupa el puesto de $puesto, recibe un aumento de $porcentaje % sobre su salario con un total de $salario ");
  }

  void cumplirAnios() {
    int totalEdad = this.edad + 1;
    print("El empleado $nombre cumple $totalEdad años");
  }

  void cambiarPuesto(String nuevoPuesto) {
    this.puesto = nuevoPuesto;
    print("El empleado $nombre ha sido asendido a $nuevoPuesto");
  }

  void mostrarInformacion() {
    print("*"*50);
    print("El nombre del empleado es: ${this.nombre}");
    print("La edad del empleado es: ${this.edad} ");
    print("El salario del empleado es: ${this.salario}");
    print("El puesto del empleado es: ${this.puesto}");
    print("*"*50);
  }

  double calcularBonificacion() {
    double bonificacion = 0;
    if (tipoContrato == "contratista") {
      bonificacion = this.salario * 0.10;
    }
    if (tipoContrato == "temporal") {
      bonificacion = this.salario * 0.05;
    }
    if (tipoContrato == "indefinido") {
      bonificacion = this.salario * 0.15;
    }
    return bonificacion;
  }
}