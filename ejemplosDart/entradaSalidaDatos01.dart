import 'dart:io';

void main() {
  //DEFINICION VARIABLES
  String? nombre;
  //nombre = "Juan";
  //ENTRADA Algoritmo
  stdout.writeln("Ejemplo 01 - Entrada/Salida Datos");
  stdout.writeln("Ingrese su nombre");
  nombre = stdin.readLineSync();

  // SALIDA Algoritmo
  print("Su nombre es: $nombre");
}
