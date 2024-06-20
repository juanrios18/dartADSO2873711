import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE ANIDADO 02
  /*
  Dado el monto de una compra calcular el descuento considerado
  Descuento es 20% si el monto es mayor a 20000 pesos.
  Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
  no hay descuento si el monto es menor o igual a 10000 pesos.
  */
  //DEFINICION VARIABLE
  double descuento;
  double montoFinal;
  //ENTRADA ALGORITMO
  print('Ingrese el monto de la compra:');
  double montoCompra = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (montoCompra > 20000) {
    descuento = montoCompra * 0.20;
  } else if (montoCompra > 10000) {
    descuento = montoCompra * 0.10;
  } else {
    descuento = 0;
  }
  montoFinal = montoCompra - descuento;
  //SALIDA ALGORITMO
  print('El descuento aplicado es: \$${descuento.toStringAsFixed(2)}');
  print('El monto final a pagar después del descuento es: ${montoFinal.toStringAsFixed(2)}');
}