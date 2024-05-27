import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 02
  /*
  Mostrar  el  número invertido.
  */
  int numInicial;
  int nuevoNumero, modulo, division;
  print("Ingrese el numero deseado a invertir");
  numInicial = int.parse(stdin.readLineSync()!);
  nuevoNumero = numInicial;
  print("El número inicial es: $numInicial");
  stdout.write("El número invertido es: ");
  do {
    modulo = nuevoNumero % 10;
    division = (nuevoNumero / 10).toInt();
    stdout.write(modulo);
    nuevoNumero = division;
  } while (division != 0);
}