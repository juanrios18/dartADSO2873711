import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE ANIDADO 04
  /*
  En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha 
  promoción consiste en lo siguiente:
  Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de 
  cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona 
  tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la 
  compra
  */
  //DEFINICION VARIABLES
  int cantidadLlantas;
  double precioPorLlanta, totalAPagar; 
  //ENTRADA ALGORITMO
  print('Ingrese la cantidad de llantas que va a comprar: ');
  cantidadLlantas = int.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (cantidadLlantas < 5) {
    precioPorLlanta = 90000;
  } else if (cantidadLlantas >= 5 && cantidadLlantas <= 10) {
    precioPorLlanta = 80000;
  } else {
    precioPorLlanta = 70000;
  }
  totalAPagar = cantidadLlantas * precioPorLlanta;
  //SALIDA ALGORITMO
  print('El precio por llanta es: \$${precioPorLlanta}');
  print('El total a pagar por todas las llantas es: \$${totalAPagar}');
}