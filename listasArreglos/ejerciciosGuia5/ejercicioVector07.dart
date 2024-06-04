import 'dart:io';

void main(List<String> args) {
  //Palíndrome
  // ANA - OSO - ARENERA
  String? palabra;
  List<String> vectorPalindrome = [];
  List<String> vectorPalabra = [];

  print("Ingrese la palabra para comprobar Palíndrome");
  palabra = stdin.readLineSync()!;
  //Se recorre cada letra de la palabra y se envia al vectorPalabra
  for (var i = 0; i < palabra.length; i++) {
    vectorPalabra.add(palabra.toUpperCase()[i]);
    vectorPalindrome.add(palabra.toUpperCase()[palabra.length-i-1]);
  }
  print(vectorPalabra);
  print(vectorPalindrome);
  if (vectorPalabra.toString() == vectorPalindrome.toString()) {
    print("Es Palíndrome");
  } else {
    print("No es Palíndrome");
  }
}