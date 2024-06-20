import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE ANIDADO 06
  /*
  El dueño de una empresa desea planificar las decisiones financieras que tomara en el Siguiente año. 
  La manera de planificarlas depende de lo siguiente:
  Si actualmente su capital se encuentra con saldo negativo, pedirá un préstamo bancario para que su 
  nuevo saldo sea de $1000000. Si su capital tiene actualmente un saldo positivo pedirá un préstamo 
  bancario para tener un nuevo saldo de $2000000, pero si su capital tiene actualmente un saldo 
  superior a los $2000000 no pedirá ningún préstamo.
  Posteriormente repartirá su presupuesto de la siguiente manera.
  • $500000 para equipo de computo
  • $200000 para mobiliario
  • y del resto, la mitad será para la compra de insumos y la otra para otorgar incentivos al personal.
  Solicitar el capital y en base a este desplegar que cantidades se destinaran para la compra de insumos 
  e incentivos al personal y, en caso de que fuera necesario, a cuanto ascendería la cantidad que se 
  pediría al banco.
  */
  //DEFINICION VARIABLE
  double insumos, incentivos, prestamo, nuevoSaldo, capitalActual;
  //ENTRADA ALGORITMO
  print('Ingrese el capital actual de la empresa:');
  capitalActual = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  nuevoSaldo = capitalActual;
  prestamo = 0;
  if (capitalActual < 0) {
    prestamo = 1000000 - capitalActual;
    nuevoSaldo = 1000000;
  } else if (capitalActual > 0 && capitalActual <= 2000000) {
    prestamo = 2000000 - capitalActual;
    nuevoSaldo = 2000000;
  }
  if (nuevoSaldo > 2000000) {
    insumos = (nuevoSaldo - 500000 - 200000) / 2;
    incentivos = insumos;
  } else {
    nuevoSaldo -= (500000 + 200000); 
    insumos = nuevoSaldo / 2;
    incentivos = insumos; 
  }
  //SALIDA ALGORITMO
  print('El préstamo a solicitar al banco es: \$${prestamo.toStringAsFixed(2)}');
  print('Cantidad destinada para la compra de insumos: \$${insumos.toStringAsFixed(2)}');
  print('Cantidad destinada para incentivos al personal: \$${incentivos.toStringAsFixed(2)}');
}