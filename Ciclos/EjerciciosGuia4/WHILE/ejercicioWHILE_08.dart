import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 08

  int n; 
  int contador = 1;
  double mayorValor = double.negativeInfinity; 
  double numero;

  print('Ingrese la cantidad de números a evaluar: ');
  n = int.parse(stdin.readLineSync()!);
  while (contador <= n) {
    print('Ingrese el número $contador: ');
    numero = double.parse(stdin.readLineSync()!);
    if (numero > mayorValor) {
      mayorValor = numero;
    }
    contador++;
  }
  print('El mayor valor de los $n números ingresados es: $mayorValor');
}