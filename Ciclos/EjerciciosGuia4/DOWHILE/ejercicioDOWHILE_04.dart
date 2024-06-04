import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 04
  /*
  Desea obtener de todas las personas que alcance a encuestar en un día.
  */
  // DEFINICION VARIABLES
  int i = 1;
  double primaria = 0,secundaria = 0,bachillerato = 0,licenciatura = 0,posgrado = 0,total = 0; 

  // ENTRADA - PROCESO ALGORITMO
  do {
    print("Ingrese el porcentaje de estudios de primaria");
    primaria = double.parse(stdin.readLineSync()!);
    print("ingrese el porcentaje de estudios de secundaria");
    secundaria = double.parse(stdin.readLineSync()!);
    print("ingrese el porcentaje de estudios de bachillerato");
    bachillerato = double.parse(stdin.readLineSync()!);
    print("ingrese el porcentaje de estudios de licenciatura");
    licenciatura = double.parse(stdin.readLineSync()!);
    print("ingrese el porcentaje de estudios de posgrado");
    posgrado = double.parse(stdin.readLineSync()!);
    total = primaria + secundaria + bachillerato + licenciatura + posgrado;
    print("desea continuar (1 = si, 0 = no)");
    i = int.parse(stdin.readLineSync()!);
    if (i == 0) {
      break;
    }
    i++;
  } while (i <= 5);
  // SALIDA ALGORITMO
  print("el porcentaje de estudios de primaria es: $primaria");
  print("el porcentaje de estudios de secundaria es: $secundaria");
  print("el porcentaje de estudios de bachillerato es: $bachillerato");
  print("el porcentaje de estudios de licenciatura es: $licenciatura");
  print("el porcentaje de estudios de posgrado es: $posgrado");
  print("el porcentaje total de estudios es: $total");
}