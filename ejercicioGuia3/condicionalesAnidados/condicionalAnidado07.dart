import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE ANIDADO 07
  /*
  Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los 
  reste y si no que los sume.
  */
  //DEFINICION VARIABLE
  int num1, num2, resultado;
  //ENTRADA ALGORITMO
  print('Ingrese el primer número:');
  num1 = int.parse(stdin.readLineSync()!);
  print('Ingrese el segundo número:');
  num2 = int.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (num1 == num2) {
    resultado = num1 * num2;
  } else if (num1 > num2) {
    resultado = num1 - num2;
  } else {
    resultado = num1 + num2;
  }
  //SALIDA ALGORITMO
  print('El resultado de la operación es: $resultado'); 
}