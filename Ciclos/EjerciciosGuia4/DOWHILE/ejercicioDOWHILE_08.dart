import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 08
  /*
  Hacer un programa que lea caracteres desde teclado y vaya contando las vocales que aparecen. 
  */

  // DEFINICION vbles
    int contA=0, contB=0, contC=0, contD=0, contF=0;
    String caracteres;

    // ENTRADA-PROCESO alg
  do {
    stdout.write("Ingresa un caracter (para terminar ingresa '#'): ");
    caracteres = stdin.readLineSync()!;
    if (caracteres != '#') {
      switch (caracteres.toLowerCase()) {
        case 'a':
          contA++;
          break;
        case 'e':
          contB++;
          break;
        case 'i':
          contC++;
          break;
        case 'o':
          contD++;
          break;
        case 'u':
          contF++;
          break;
      }
    }
  } while (caracteres != '#');
  int totalVocales = contA + contB + contC + contD + contF;

  //SALIDA alg
  print("\nHas ingresado un total de $totalVocales vocales:");
  print("Vocales 'a': $contA");
  print("Vocales 'e': $contB");
  print("Vocales 'i': $contC");
  print("Vocales 'o': $contD");
  print("Vocales 'u': $contF");
}
