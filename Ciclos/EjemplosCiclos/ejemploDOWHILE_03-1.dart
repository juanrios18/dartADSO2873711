import 'dart:io';

void main(List<String> args) {
  /*
  Realizar un algoritmo que permita solicitar una clave numérica al usuario y no permitir continuar hasta que no ingrese la clave válida
  */
  int clave=1855,claveIngresada,intento=0;

  do {
    print("Ingrese la clave para iniciar");
    claveIngresada = int.parse(stdin.readLineSync()!);
if(claveIngresada != clave){
  print("La clave es incorrecta");
  intento++;
} else if(claveIngresada != clave){
  print("La clave es incorrecta");
  intento++;
} else if(claveIngresada != clave){
  print("La clave es incorrecta");
  intento++;
} else if(intento < 3) {
  print("Ha llegado hasta el limite de intentos maximos");
} else {
  print("La clave ingresada es correcta");
}
  } while ( clave != claveIngresada);
}