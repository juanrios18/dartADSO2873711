import 'dart:io';

void main() {
  print("Ejemplo 03 - Entrada/Salida Datos");
  //DEFINICION VARIABLES
  double nota1, nota2, nota3, promedio;
  //ENTRADA ALGORITMO
  print("Ingrese su nota 1");
  nota1 = double.parse(stdin.readLineSync()!);
  print("Ingrese su nota 2");
  nota2 = double.parse(stdin.readLineSync()!);
  print("Ingrese su nota 3");
  nota3 = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  promedio = (nota1 + nota2 + nota3) / 3;
  //SALIDA ALGORITMO
  stdout.write("Las notas fueron: $nota1 , $nota2 y $nota3");
  stdout.write(" y el promedio es: $promedio");
}
