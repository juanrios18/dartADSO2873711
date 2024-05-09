import 'dart:io';

void main() {
  // JUAN PABLO RIOS ARISTIZABAL - EJE CONDICIONAL DOBLE 06
  /* El  gobierno  colombiano  desea  reforestar  un  bosque  que  mide  determinado  número  de  hectáreas.  Si  la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera: (Cuadro1) Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la sig. manera: (cuadro2) El gobierno desea saber el numerode pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados.*/
  //DEFINICION VARIABLE
  double medidaBosque, porPino, porRoble, PorCedro, numpinos, numroble, numcedro, MetrosBosque;
  //ENTRADA ALGORITMO
  print ("Ingrese el numero de hectareas");
  medidaBosque = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  MetrosBosque = medidaBosque * 10000;
  if (MetrosBosque > 1000000) {
    porPino = 0.7;
    porRoble = 0.2;
    PorCedro = 0.1;

  } else {
    porPino = 0.5;
    porRoble = 0.3;
    PorCedro = 0.2;
  }
  numpinos = MetrosBosque * 8 /10 *porPino;
  numroble = MetrosBosque * 15 / 15 * porRoble;
  numcedro = MetrosBosque * 10 / 18 * PorCedro;
  //SALIDA ALGORITMO
  print("La cantidad de pinos que caben en el terreno es de: $numpinos pinos");
  print("La cantidad de robles que caben en el terreno es de: $numroble robles");
  print("La cantidad de cedros que caben en el terreno es de: $numcedro cedros");
}