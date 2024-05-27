import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE FOR 04
  /* 
  Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.
  */
  List<double> calificaciones = [];
  double sumaCalificaciones = 0;
  double calificacionBaja = double.infinity;

  for (int i = 0; i < 10; i++) {
    print("Ingrese la calficación del alumno ${i+1}:");
    double calificacion = double.parse(stdin.readLineSync()!);
    calificaciones.add(calificacion);
    sumaCalificaciones += calificacion;
    
    if (calificacion < calificacionBaja) {
      calificacionBaja = calificacion;
    }
  }
  double promedio= sumaCalificaciones / 10;

  print("La calificación promedio del grupo es de: $promedio");
  print("La calificación más baja del grupo es de: $calificacionBaja");
}