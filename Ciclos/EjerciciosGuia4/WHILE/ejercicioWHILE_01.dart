import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 01
  /*
  Una compañía de seguros tiene contratados a n vendedores.  
  */
  //DEFINICION VARIABLES
  int cantVendedores, contador = 0, cantVentas = 3;
  double sueldoBase, venta, totalVentas=0, comision, sueldoTotal;
  //ENTRADA ALGORITMO
  print("Ingrese la cantidad de vendedores");
  cantVendedores = int.parse(stdin.readLineSync()!);
  print("Ingrese el sueldo de los vendedores");
  sueldoBase = double.parse(stdin.readLineSync()!);
  while(contador < cantVendedores) {
    for(int i = 0; i < cantVentas; i++){
      print("Ingrese el valor de la venta ${i+1} del vendedor ${contador+1}");
      venta = double.parse(stdin.readLineSync()!);
      while(venta < 0 || venta > 10000000) {
        print("La venta se encuentra fuera del rango, Ingrese de nuevo");
        venta = double.parse(stdin.readLineSync()!);
      }
      totalVentas += venta;
    }
    comision = totalVentas * 0.1;
    sueldoTotal = sueldoBase + comision;
    //SALIDA ALGORITMO
    print("La comision por ventas es de $comision");
    print("El sueldo total es $sueldoTotal");
    contador++;
  }
}