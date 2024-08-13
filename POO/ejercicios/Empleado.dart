class Empleado {
  String nombre = "";
  int edad = 0;
  double salario = 0;
  String puesto = "";
  String tipoContrato = "";
//constructor
  Empleado(String nombre, int edad, double salario, String puesto,
      String tipoContrato) {
    this.nombre = nombre;
    this.edad = edad;
    this.salario = salario;
    this.puesto = puesto;
    this.tipoContrato = tipoContrato;
  }
//metodo aumental salario
  void aumentarSalario(double porcentaje) {
    double valorPorcentaje = this.salario * (porcentaje / 100);
    this.salario = valorPorcentaje + this.salario;
    print(
        "El empleado $nombre que ocupa el puesto de $puesto, recibe un aumento de $porcentaje % sobre su salario con un total de $salario ");
  }

// metood cumplir años
  void cumplirAnios() {
    this.edad++;
    print("El empleado $nombre cumple $edad años");
  }

// metodo cambiar puesto
  void cambiarPuesto(String nuevoPuesto) {
    this.puesto = nuevoPuesto;
    print("El empleado $nombre ha sido asendido a $nuevoPuesto");
  }

//metodo mostrar informacion
  void mostrarInformacion() {
    print("El nombre del empleado es: ${this.nombre}");
    print("La edad del empleado es: ${this.edad} ");
    print("El salario del empleado es: ${this.salario}");
    print("El puesto del empleado es: ${this.puesto}");
  }

  double calcularBonificacion() {
    double bonificacion;
    if (tipoContrato == "contratista") {
      bonificacion = this.salario * 0.10;
    } else if (tipoContrato == "temporal") {
      bonificacion = this.salario * 0.05;
    } else if (tipoContrato == "indefinido") {
      bonificacion = this.salario * 0.15;
    } else {
      bonificacion = 0;
    }
    this.salario = this.salario + bonificacion;
    return salario;
  }
}