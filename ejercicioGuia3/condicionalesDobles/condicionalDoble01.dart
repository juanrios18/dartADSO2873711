import 'dart:io';

void main() {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOBLE 01
  /*
  Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.  
  */
  //DEFINICION VARIABLE
  double num1, num2;
  //ENTRADA ALGORITMO
  print("Ingrese el número 1 y 2");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  //PROCESO Y SALIDA ALGORITMO
  if (num1 > num2) {
    print("$num2, $num1");
  }else {
    print("$num1, $num2");
  }
}
