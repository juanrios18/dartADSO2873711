import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 07
  int n; 
  int contador = 1;
  double menorValor = double.infinity; 
  double numero;

  print('Ingrese la cantidad de números a evaluar: ');
  n = int.parse(stdin.readLineSync()!);

  while (contador <= n) {
    print('Ingrese el número $contador: ');
    numero = double.parse(stdin.readLineSync()!);

    if (numero < menorValor) {
      menorValor = numero;
    }

    contador++;
  }

  print('El menor valor de los $n números ingresados es: $menorValor');
}