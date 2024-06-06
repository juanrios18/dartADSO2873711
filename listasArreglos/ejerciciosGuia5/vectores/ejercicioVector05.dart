import 'dart:io';

void main(List<String> args) {
  /*
  Diseñe  un  algoritmo  que  lea  un  número  cualquiera  y  lo  busque  en  el  vector  X,  el  cual  tiene almacenados  12  elementos.  Escribir  la  posición  donde  se  encuentra  almacenado  el  número  en  el vector o el mensaje “NO” si no lo encuentra.
  */
  List<int> vectorX = [];
  int numBuscar, cantElementos=5, numero;
  int posicion = -1;

  //Ciclo para llenar vector
  for (int i = 0; i < cantElementos; i++) {
    print("Ingrese el numero #${i+1}");
    numero = int.parse(stdin.readLineSync()!);
    vectorX.add(numero);
  }
  print("Ingrese un número para buscar en el vector");
  numBuscar = int.parse(stdin.readLineSync()!);

  //Ciclo para buscar el elemento
  for (int i = 0; i < vectorX.length; i++) {
    if (numBuscar == vectorX[i]) {
      posicion = i;
    }
  }
  //Validacion de la posicion
  if (posicion != -1) {
    print("El número se encuentra en la posición $posicion");
  }else{
    print("El número no se encontró");
  }
}