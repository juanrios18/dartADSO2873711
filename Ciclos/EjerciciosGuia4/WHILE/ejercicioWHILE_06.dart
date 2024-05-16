import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE WHILE 06
  /*
  Calcular el promedio de edades de hombres , mujeres y de todo un grupo n de alumnos
  */
  //DEFINICION VARIABLE
  double promedio, promedioHombres, promedioMujeres;
  int cantAlumnos, contadorHombres=0, contadorMujeres=0;
  int contador = 0, edad, sumaHombres=0, sumaMujeres=0;
  int sumaTotal=0;
  String? genero;

  //ENTRADA ALGORITMO
  print("Cual es la cantidad de alumnos?");
  cantAlumnos = int.parse(stdin.readLineSync()!);
  while(contador < cantAlumnos){
    print("Cual es su género y edad");
    genero = stdin.readLineSync()!;
    edad = int.parse(stdin.readLineSync()!);
    if( genero.toUpperCase() == "H"){
      sumaHombres += edad;
      contadorHombres++;
    }else if(genero.toUpperCase() == "M"){
      sumaMujeres += edad;
      contadorMujeres++;
    }else {
      print("Genero no valido");
    }
    contador++;
  }
  sumaTotal = sumaHombres + sumaMujeres;
  promedio = sumaTotal / cantAlumnos;
  promedioHombres = sumaHombres / contadorHombres;
  promedioMujeres = sumaMujeres / contadorMujeres;
  //SALIDA ALGORITMO
  print("El promedio de edades del grupo es: $promedio");
  print("El promedio de los hombres es: $promedioHombres");
  print("El promedio de las mujeres es: $promedioMujeres");
}