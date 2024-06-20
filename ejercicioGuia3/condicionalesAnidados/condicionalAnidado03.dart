import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE ANIDADO 03
  /*
  En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del 
  número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10% 
  de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco 
  pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de 
  descuento. El precio de cada computadora es de $1100000
  */
  //DEFINICION VARIABLES
  double descuento;
  double total;
  //ENTRADA ALGORITMO
  print('Ingrese la cantidad de computadoras que desea comprar:');
  int cantidad = int.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  const int precioComputadora = 1100000;
  if (cantidad < 5) {
    descuento = 0.10;
  } else if (cantidad >= 5 && cantidad < 10) {
    descuento = 0.20;
  } else {
    descuento = 0.40;
  }
  total = cantidad * precioComputadora * (1 - descuento);
  //SALIDA ALGORITMO
  print('El descuento aplicado es del ${descuento * 100}%.');
  print('El total a pagar por las computadoras es: \$${total.toStringAsFixed(2)}');
}