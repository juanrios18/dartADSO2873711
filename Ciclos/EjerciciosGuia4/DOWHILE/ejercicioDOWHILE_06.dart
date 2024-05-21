import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE DOWHILE 06
  /*
  Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
  */
  double calificacion, prom, mayorPromedio=0, sumaCalific=0;
  int numControl=0, cantEstudiantes, contador = 0;
  print("Cuantos estudiantes están en el curso");
  cantEstudiantes = int.parse(stdin.readLineSync()!);
  do {
    print("Estudiante #${contador+1}");
    sumaCalific = 0;
    for(int i=0; i<5; i++){
      print("Digite la nota ${i+1}");
      calificacion = double.parse(stdin.readLineSync()!);
      while (calificacion < 0 || calificacion > 5){
        print("Nota incorrecta, ingresese de nuevo la nota");
        calificacion = double.parse(stdin.readLineSync()!);
      }
      sumaCalific += calificacion;
    }
    prom= sumaCalific / 5;
    if(prom > mayorPromedio){
      mayorPromedio = prom;
      numControl = contador + 1;
      print("Hasta el momento el promedio mayor es: $mayorPromedio");
    }
    contador++;
    print('*' * 30);
  } while (contador < cantEstudiantes);
  print("El mayor promedio es: $mayorPromedio");
  print("El número de control del mejor estudiante: $numControl");

}