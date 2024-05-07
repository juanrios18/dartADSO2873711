import 'dart:io';

void main(){
/* 
Desarrollar un algoritmo tal que, dado como datos 10 números enteros, obtenga la suma de los 10 númeos enteros. Se mostrara la suma de dichos números 
*/
  int num;
  int suma = 0; //Variable tipo acumulador
  for(int i = 0; i < 10; i++){
    print("Ingrese el número");
    num = int.parse(stdin.readLineSync()!);
    //Se van guardando la suma de los números
    suma = suma + num; //suma += num;
  }
    print("La suma es: $suma");
}