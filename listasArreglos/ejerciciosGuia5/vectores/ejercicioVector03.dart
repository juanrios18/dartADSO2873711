import 'dart:io';

void main(List<String> args) {
  /*
  Almacenar  15  números  en  un  vector,  imprimir  cuantos  son  ceros,  cuántos  son  negativos,  cuantos positivos. Imprimir además la suma de los negativos y la suma de los positivos.
  */

  List<int> listaInicial = [];
  int cantNumeros = 10;
  int num, sumaPos = 0, sumaNeg = 0, cantPos = 0, cantNeg = 0, cantCeros = 0;

  //Ciclo para llenar Lista Inicial
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el #${i+1} de la lista Inicial");
    num = int.parse(stdin.readLineSync()!);
    listaInicial.add(num);
  }
  for (var i = 0; i < cantNumeros; i++) {
    if (listaInicial[i] > 0) {
      cantPos ++;
      sumaPos += listaInicial[i];
    } else if(listaInicial[i] < 0) {
      cantNeg ++;
      sumaNeg += listaInicial[i];
    } else if(listaInicial[i] == 0) {
      cantCeros ++;
    }
  }
  print("La lista Inicial es: $listaInicial");
  print("La cantidad de ceros es de: $cantCeros");
  print("La cantidad de # positivos es: $cantPos");
  print("La cantidad de # negativos es: $cantNeg");
  print("La suma de los numeros positivos es: $sumaPos");
  print("La suma de los numeros negativos es: $sumaNeg");
}