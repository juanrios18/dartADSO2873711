import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE ANIDADO 01
  /*
  Dado tres números calcular el mayor
  */
  //DEFINICION VARIABLE
  int num1, num2, num3, mayor;
  // ENTRADA ALGORITMO
  print('Ingrese el primer número:');
  num1 = int.parse(stdin.readLineSync()!);
  print('Ingrese el segundo número:');
  num2 = int.parse(stdin.readLineSync()!);
  print('Ingrese el tercer número:');
  num3 = int.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (num1 > num2 && num1 > num3) {
    mayor = num1;
  } else if (num2 > num1 && num2 > num3) {
    mayor = num2;
  } else if (num3 > num1 && num3 > num2) {
    mayor = num3;
  } else {
    mayor = num1;
  }
   //SALIDA ALGORITMO
  print('El número mayor es: $mayor');
}