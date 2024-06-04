import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 05
  int n; // Número de alumnos
  int contador = 1;
  double sumaCalificaciones = 0.0;
  double promedio = 0.0;
  double calificacion;

  print('Ingrese el número de alumnos: ');
  n = int.parse(stdin.readLineSync()!);
  while (contador <= n) {
    print('Ingrese la calificación del alumno $contador: ');
    calificacion = double.parse(stdin.readLineSync()!);
    sumaCalificaciones += calificacion;
    contador++;
  }
  promedio = sumaCalificaciones / n;
  print('El promedio de calificaciones del grupo de $n alumnos es: $promedio');
}