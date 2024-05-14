import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 03
  /*
  Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.
  */
  int positivos = 0;
  int negativos = 0;
  int ceros = 0;

  for (int i= 0; i < 20; i++) {
    print("Ingrese el número ${i+1}:");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero > 0) {
      positivos++;
    } else if (numero < 0) {
      negativos++;
    }  else {
      ceros++;
    }
  }
  print("La cantidad de numeros positivos es: $positivos");
  print("La cantidad de numeros negativos es: $negativos");
  print("La cantidad de ceros es: $ceros");
}