import 'dart:io';

void main () {
  /*
  Pedir al usuario n notas ingresadas por el usuario. Si el promedio es mayor a 3, decir que el estudiante aprobó el trimestre, sino que indique que reprobó
  */
  int cantNotas;
  double nota, suma=0, promedio;
  print("Ingrese la cantidad de notas");
  cantNotas = int.parse(stdin.readLineSync()!);
  for (int i=0; i< cantNotas; i++){
    print("Ingrese la nota " + (i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    suma += nota;
  }
  promedio = suma / cantNotas;
  if (promedio>3){
  print("Usted aprobó el trimestre");
  } else {
    print("Usted reprobó el trimestre");
  }
}