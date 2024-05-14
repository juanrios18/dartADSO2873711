import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 07
  /*
  Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
  */
  int kilos, clientes = 15;
  double descuento, precioKilos=5000, totalPagar= 0, gananciasTotales = 0;

  for (int i = 0; i < clientes; i++) {
    print("Ingrese la cantidad de kilos");
    kilos = int.parse(stdin.readLineSync()!);
    totalPagar = precioKilos * kilos;
    if (kilos > 10) {
      descuento = totalPagar * 0.15;
      totalPagar = totalPagar - descuento;
    }
    gananciasTotales += totalPagar;
    print("El precio a pagar es de: $totalPagar");
  }
  print("La ganancia total del local es de: $gananciasTotales");
}