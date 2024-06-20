import 'dart:io';

void main(List<String> args) {
  // JUAN PABLO RIOS ARISTIZABAL - EJE ANIDADO 08
  /*
  El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año 
  2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. Las 
  personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo 
  de menos de 25 años.
  Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una 
  antigüedad en su empleo de 25 años o más.
  Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una 
  antigüedad en su empleo de 25 años o mas.
  Determinar en que tipo de jubilación, quedara adscrita una persona.
  */
  //DEFINICION VARIABLES
  int edad, antiguedad;
  String? tipoJubilacion;
  //ENTRADA ALGORITMO
  print('Ingrese su edad:');
  edad = int.parse(stdin.readLineSync()!);
  print('Ingrese su antigüedad en el empleo (número de años):');
  antiguedad = int.parse(stdin.readLineSync()!);
  //PROCESO ALGORITMO
  if (edad >= 60 && antiguedad < 25) {
    tipoJubilacion = 'Jubilación por edad';
  } else if (edad < 60 && antiguedad >= 25) {
    tipoJubilacion = 'Jubilación por antigüedad joven';
  } else if (edad >= 60 && antiguedad >= 25) {
    tipoJubilacion = 'Jubilación por antigüedad adulta';
  } else {
    tipoJubilacion = 'No aplica para jubilación';
  }
  //SALIDA ALGORITMO
  print('Usted quedará adscrito a: $tipoJubilacion');
}