import 'dart:io';

void main(List<String> args) {
  /*
  Realizar un algoritmo que permita solicitar una clave numérica al usuario y no permitir continuar hasta que no ingrese la clave válida
  */
  int clave=1855,claveIngresada;

  do {
    print("Ingrese la clave para iniciar");
    claveIngresada = int.parse(stdin.readLineSync()!);
    if(claveIngresada != clave){
      print("La clave es incorrecta");
    }else {
      print("La clave ha sido ingresada correctamente");
    }
  } while ( clave != claveIngresada);
}