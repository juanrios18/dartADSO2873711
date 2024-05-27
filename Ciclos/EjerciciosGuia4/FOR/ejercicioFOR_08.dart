import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 08
  /* 
  Un alumno de la clase de lógica matemática desea desarrollar un programa que calcule el factorial de un número N.
  */
  int numero, factorial = 1;
  print("Ingrese el número para calcular factorial");
  numero = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= numero; i++) {
    factorial = factorial * i;
  }
  print("El factorial de $numero es $factorial");
}