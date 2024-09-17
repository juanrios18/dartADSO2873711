import 'Persona.dart';

class Futbolista extends Persona {
  String _equipo;
  String _posicion;
  int cantidadGoles;

  Futbolista(
      String nombre, int edad, this._equipo, this._posicion, this.cantidadGoles)
      : super(nombre, edad);

  void setEquipo(String equipo) {
    this._equipo = equipo;
  }

  String getEquipo() {
    return _equipo;
  }

  void setPosicion(String posicion) {
    this._posicion = posicion;
  }

  String getPosicion() {
    return _posicion;
  }

  void setCantGoles(int cantidadGoles) {
    this.cantidadGoles = cantidadGoles;
  }

  int getCantGoles() {
    return cantidadGoles;
  }

  bool esTitular() {
    return cantidadGoles >= 5;
  }
}

void mostrarDatosFutbolista1(Futbolista futbolista1) {
  print("Datos del Primer Futbolista :");
  print("Nombre Completo : ${futbolista1.getNombre()}");
  print("Edad : ${futbolista1.getEdad()}");
  print("Equipo : ${futbolista1.getEquipo()}");
  print("Posición : ${futbolista1.getPosicion()}");
  print("Goles : ${futbolista1.getCantGoles()}");
  print("Es titular : ${futbolista1.esTitular() ? 'Si' : 'No'}");
  print(" ");
}

void mostrarDatosFutbolista2(Futbolista futbolista2) {
  print("Datos del Segundo Futbolista :");
  print("Nombre Completo : ${futbolista2.getNombre()}");
  print("Edad : ${futbolista2.getEdad()}");
  print("Equipo : ${futbolista2.getEquipo()}");
  print("Posición : ${futbolista2.getPosicion()}");
  print("Goles : ${futbolista2.getCantGoles()}");
  print("Es titular : ${futbolista2.esTitular() == true ? "Si" : "No"}");
  print(" ");
}