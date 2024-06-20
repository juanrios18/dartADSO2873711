import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE MULTIPLE 03
  /*
  Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:
  Val
  100 * v
  100^v
  100/v
  Cualquier número
  Num
  1
  2
  3
  0
  */
  //DEFINICION VARIABLES
  int numero;
  double v, resultado;
  //ENTRADA ALGORITMO
  print("ingrese el numero de volumen que desea operar");
  v = double.parse(stdin.readLineSync()!);
  print("tipo de operacion elegir un numero de el 1 al 3");
  numero = int.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  switch (numero) {
    case 1:
      resultado = 100 * v.toDouble();
      break;
    case 2:
      resultado = pow(v, 100).toDouble();
      break;
    case 3:
      resultado = 100/v;
      break;
    default:
      resultado = 0;
      break;
  }
  //SALIDA ALGORITMO
  print("el valor de la variable es: $v");
  print("el resultado es: $resultado");
}