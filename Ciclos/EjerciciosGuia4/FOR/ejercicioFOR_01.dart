import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 01
  /*
  Calcular el promedio de un alumno que tiene 7 
  calificaciones en la materia de Diseño Estructurado
  de Algoritmos.  
  */
  int nota;
  int suma = 0;
  double promedio;

  for(int i=0; i < 7; i++) {
    print("Digite su nota " + (i+1).toString());
    nota = int.parse(stdin.readLineSync()!);
    suma= suma + nota;
  }
  promedio = suma / 7;
  print("El promedio del estudiantes es de: $promedio");
  }