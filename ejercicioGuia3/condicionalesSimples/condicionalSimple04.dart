// ignore_for_file: unused_local_variable

import 'dart:io';

void main() {
  // JUAN PABLO RIOS ARISTIZABAL - EJE CONDICIONAL SIMPLE 04
  /*
  Hacer  un  algoritmo  que  imprima  el  nombre  de  un  artículo,  clave,  precio  original  y  su  precio  con descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave es 2 el descuento en del 20% (solo existen dos claves).
   */
  //DEFINICIO VARIABLE
  String? nombreArtic;
  int clave;
  double precioOriginal, precioFinal, descuento;
  //ENTRADA ALGORITMO
  print("Ingrese el nombre del articulo");
  nombreArtic = stdin.readLineSync();
  print("Ingrese la clave del articulo");
  clave = int.parse(stdin.readLineSync()!);
  print("Ingrese el precio original del articulo");
  precioOriginal = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  descuento = 0;
  if (clave == 1) {
    descuento = precioOriginal * 0.1;
  }
  if (clave == 2) {
    descuento = precioOriginal * 0.2;
  }
  precioFinal = precioOriginal - descuento;
  //SALIDA ALGORITMO
  print("El nombre del articulo es: $nombreArtic");
  print("La clave del articulo es: $clave");
  print("El precio original del articulo es de: $precioOriginal");
  print("El precio con descuento es de: $precioFinal");
}
