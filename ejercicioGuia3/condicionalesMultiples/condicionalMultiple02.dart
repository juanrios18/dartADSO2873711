import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE MULTIPLE 02
  /*
  Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución :
  Tipo 1 : Fumigación contra malas hierbas, $50000 por hectárea
  Tipo 2 : Fumigación contra moscas y mosquitos, $70000 por hectárea
  Tipo 3 : Fumigación contra gusanos, $80000 por hectárea.
  Tipo 4 : Fumigación contra todo lo anterior, $190000 por hectárea.
  •Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de descuento.
  •Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000.
  •Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.
  Diseñe  el  programa  que  lea  el  nombre  del  granjero,  el  tipo  de  fumigación  solicitada  (1-4)  y  el  número  de hectáreas a fumigar. 
  Se debe imprimir el nombre del granjero y la cuenta total.
  */
  //DEFINICION VARIABLE
  String? nombre;
  double pagototal, descuento, tipofumigacion, cantHectareas, costoinicial;
  //ENTRADA ALGORITMO
  print("ingrese su nombre");
  nombre = stdin.readLineSync();
  print("ingrese 1 para (fumigacion contra malas hierbas) 2 para (Fumigación contra moscas y mosquitos) 3 para (Fumigación contra gusanos) 4 para (Fumigación contra todo lo anterior)");
  tipofumigacion = double.parse(stdin.readLineSync()!);
  print("ingrese la cantidad de hectareas que va fumigar");
  cantHectareas = double.parse(stdin.readLineSync()!);
  descuento = 0;
  costoinicial = 0;
  pagototal = costoinicial * cantHectareas;
  //PROCESO ALGORITMO
  switch (tipofumigacion) {
    case 1:
      pagototal = 50000 * cantHectareas;
      break;
    case 2:
      pagototal = 70000 * cantHectareas;
      break;
    case 3:
      pagototal = 80000 * cantHectareas;
      break;
    case 4:
      pagototal = 190000 * cantHectareas;
      break;
    default:
    pagototal=0;
      print("tipo de fumigacion invalido");
      break;
  }
  if (cantHectareas > 100) {
    pagototal = pagototal * 0.95;
  }
  if (pagototal > 1000000) {
    descuento = (pagototal - 1000000) * 0.1;
    pagototal = pagototal - descuento;
  }
  //SALIDA ALGORITMO
  print("el nombre del granjero es: $nombre");
  print("el pago total es: $pagototal");
}