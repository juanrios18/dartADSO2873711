import 'dart:io';

void main(List<String> args) {
  /*
  Llenar  dos  vectores  A  y  B  de  10  elementos  cada  uno,  sumar  el  elemento  uno  del  vector  A  con  el elemento uno del vector B y así sucesivamente hasta 10, almacenar el resultado en un vector C, e imprimir el vector resultante.
  */
  
  List<double> listaA = [];
  List<double> listaB = [];
  List<double> listaC = [];
  int cantNumeros = 5;
  double num,sumaListas=0;

  //Ciclo para llenar Vector A y B
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingrese el numero #${i+1} para la lista A");
    num = double.parse(stdin.readLineSync()!);
    listaA.add(num);
    print("Ingrese el numero #${i+1} para la lista B");
    num = double.parse(stdin.readLineSync()!);
    listaB.add(num);
  }
  for (var i = 0; i < listaA.length; i++) {
    sumaListas = listaA[i] + listaB[i];
    listaC.add(sumaListas);
  }
  print("La suma de las listas es:");
  print(listaC);
}