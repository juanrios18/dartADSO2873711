// ignore_for_file: unused_local_variable
import 'dart:io';

void main(){
  // JUAN PABLO RIOS ARISTIZABAL - EJE CONDICIONAL 03
  /*
  El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al precio normal.
  */
  //DEFINICION VARIABLE
  String? modeloTraje;
  double precioUnitario,cantidadTrajes,precioFinal, descuento;
  //ENTRADA ALGORITMO
  print("Ingrese el modelo del traje");
  modeloTraje = stdin.readLineSync();
  print("Ingrese el precio unitario del traje");
  precioUnitario = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de trajes que lleva");
  cantidadTrajes = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  precioFinal = precioUnitario * cantidadTrajes;
  if (cantidadTrajes >= 3) {
    descuento = precioFinal * 0.17;
    precioFinal = precioFinal - descuento;
  }
  //SALIDA ALGORITMO
  print("El precio total por el/los trajes es de: $precioFinal");
}