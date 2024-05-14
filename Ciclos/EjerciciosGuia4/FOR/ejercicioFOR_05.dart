import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 05
  /*
  Calcular  e  imprimir  la  tabla  de  multiplicar  de  un  número  cualquiera.  Imprimir  el  multiplicando,  el multiplicador y el producto. 
  */
  int numero, producto;
  print("Ingrese un número para mostrar su tabla de multiplicar: ");
  numero = int.parse(stdin.readLineSync()!);
  print("La tabla de multiplicar del numero $numero es: ");
  
  for (int i = 1; i <=10; i++) {
    producto = numero * i;
    print("$numero x $i = $producto");
  }
}