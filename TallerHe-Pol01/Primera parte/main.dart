import 'dart:io';
import 'Futbolista.dart';
import 'Programador.dart';

String leerinfo(String info) {
  stdout.write(info);
  String leerinfo = stdin.readLineSync() ?? '';
  return leerinfo;
}

int leerEdadGoles(String EdadGoles) {
  stdout.write(EdadGoles);
  int leerEdadGoles = int.parse(stdin.readLineSync() ?? '0');
  return leerEdadGoles;
}

double leerSalario(String salario) {
  stdout.write(salario);
  double leerSalario =  double.parse(stdin.readLineSync() ?? '0');
  return leerSalario;
}

void main() {
  print("Ingrese los datos para el primer Futbolista :");
  Futbolista futbolista1 = Futbolista(
      leerinfo("Nombre Completo : "),
      leerEdadGoles("Edad : "),
      leerinfo("Equipo : "),
      leerinfo("Posición : "),
      leerEdadGoles("Cantidad de goles : "));
      print(" ");

  print("Ingrese los datos para el segundo Futbolista :");
  Futbolista futbolista2 = Futbolista(
      leerinfo("Nombre Completo : "),
      leerEdadGoles("Edad : "),
      leerinfo("Equipo : "),
      leerinfo("Posición : "),
      leerEdadGoles("Cantidad de goles : "));
      print(" ");

  print("Ingrese los datos para el primer Programador :");
  Programador programador1 = Programador(
      leerinfo("Nombre Completo : "),
      leerEdadGoles("Edad : "), 
      leerinfo("Empresa : "), 
      leerSalario("Salario : "));
      print(" ");

  print("Ingrese los datos para el segundo Programador :");
  Programador programador2 = Programador(
      leerinfo("Nombre Completo : "),
      leerEdadGoles("Edad : "), 
      leerinfo("Empresa : "), 
      leerSalario("Salario : "));

  // Mostrar datos ingresados
  print(" ");
  print("*" * 40);
  print(" ");
  mostrarDatosFutbolista1(futbolista1);
  mostrarDatosFutbolista2(futbolista2);
  print("*" * 40);
  print(" ");
  mostrarDatosProgramador1(programador1);
  mostrarDatosProgramador2(programador2);
}