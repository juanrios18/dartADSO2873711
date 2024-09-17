import 'Persona.dart';

class Programador extends Persona {
  String _empresa;
  double _salario;

  Programador(String nombre, int edad, this._empresa, this._salario)
      : super(nombre, edad);

  void setEmpresa(String empresa) {
    this._empresa = empresa;
  }

  String getEmpresa() {
    return _empresa;
  }

  void setSalario(double salario) {
    this._salario = salario;
  }

  double getSalario() {
    return _salario;
  }

  double obtenerSalarioNeto() {
    return _salario * 0.89; // 11% de descuento
  }
}

void mostrarDatosProgramador1(Programador programador1) {
  print("Datos del Primer Programador :");
  print("Nombre Completo : ${programador1.getNombre()}");
  print("Edad : ${programador1.getEdad()}");
  print("Empresa : ${programador1.getEmpresa()}");
  print("Salario : ${programador1.getSalario()}");
  print("Salario neto : ${programador1.obtenerSalarioNeto()}");
  print(" ");
}
void mostrarDatosProgramador2(Programador programador2) {
  print("Datos del Segundo Programador 2:");
  print("Nombre Completo : ${programador2.getNombre()}");
  print("Edad : ${programador2.getEdad()}");
  print("Empresa : ${programador2.getEmpresa()}");
  print("Salario : ${programador2.getSalario()}");
  print("Salario neto : ${programador2.obtenerSalarioNeto()}");
  print(" ");
}