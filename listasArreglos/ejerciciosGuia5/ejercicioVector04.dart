import 'dart:io';

void main(List<String> args) {
  /*
  Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original e imprimir el vector resultante.
  */

  List<int> vectorInicial = [];
  List<int> vectorInverso = [];
  int cantNumeros = 8;
  int num;

  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el #${i+1} para la lista inicial");
    num = int.parse(stdin.readLineSync()!);
    vectorInicial.add(num);
  }
  for (var i = cantNumeros -1; i >= 0; i--) {
    vectorInverso.add(vectorInicial[i]);
  }
  print("La lista Inicla es:");
  print(vectorInicial);
  print("La lista inversa queda: ");
  print(vectorInverso);
}