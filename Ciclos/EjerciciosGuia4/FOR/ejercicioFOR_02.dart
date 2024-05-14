import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 02
  /*
  Leer 10 números e imprimir solamente los números positivos
  */
  List<int> numeros=[];
  for (int i = 0; i < 10; i++) {
    print("Ingresa el número ${i+1}:");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  print("Los numeros positivos son: ");
  for (int numero in numeros) {
    if (numero > 0) {
      print(numero);
    }
  }
}