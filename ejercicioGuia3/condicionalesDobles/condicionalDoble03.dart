import 'dart:io';

void main() {
  // JUAN PABLO RIOS ARISTIZABAL - EJE CONDICIONAL DOBLE 03
  /*
  Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se
  aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%
  */
  //DEFINICION VARIABLE
  double totalPagar, valorCamisa, cantCamisas, desc1, desc2, totalCompra;
  //ENTRADA ALGORITMO
  print("Ingrese el valor unitario de las camisas");
  valorCamisa = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de camisas que lleva");
  cantCamisas = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  totalCompra = valorCamisa * cantCamisas;
  desc1 = totalCompra * 0.2;
  desc2 = totalCompra * 0.1;
  if (cantCamisas >= 3) {
    totalPagar = totalCompra - desc1;
  } else {
    totalPagar = totalCompra - desc2;
  }
  //SALIDA ALGORITMO
  print("El monto total a pagar es de: $totalPagar");
}
