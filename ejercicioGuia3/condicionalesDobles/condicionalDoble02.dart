import 'dart:io';

void main() {
  // JUAN PABLO RIOS ARISTIZABAL - EJE CONDICIONAL DOBLE 02
  /*
  Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
  • Si trabaja 40 horas o menos se le paga $16 por hora
  • Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
  extra.
  */
  //DEFINICION VARIABLE
  double salarioSemanal,horasTrabajada,horasExtra,valorExtra,valorHora;  
  //ENTRADA ALGORITMO
  print("Ingrese la cantidad de horas trabajadas");
  horasTrabajada = double.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  salarioSemanal = 0;
  valorExtra = 20000;
  valorHora = 16000;
  if (horasTrabajada <= 40) {
    salarioSemanal = horasTrabajada * 16000;
  } else {
    horasExtra = horasTrabajada - 40;
    salarioSemanal = 40 * valorHora + horasExtra * valorExtra;
  }
  //SALIDA ALGORITMO
  print("Su salario semanal equivale a: $salarioSemanal");
}
