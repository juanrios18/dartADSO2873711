import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 07
  /*
  Cuando lea las 10 letras 'a' el programa terminará
  */

  // DEFINICION VARIABLES
  int contadorA = 0;
  String? letra;
  
  print("Introduce caracteres. El programa terminará cuando se hayan introducido 10 letras 'a'.");
  // ENTRADA-PROCESO ALGORITMO
  do {
     letra = stdin.readLineSync();

    if (letra != null && letra.isNotEmpty) {
      String caracter = letra[0]; 

      if (caracter == 'a') {
        contadorA++;
      } else {
        print('El caracter leído no es una "a"');
      }
    }
  } while (contadorA < 10);
  // SALIDA ALGORITMO
  print("Se han leído 10 letras 'a'. El programa ha terminado.");
}