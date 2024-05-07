import 'dart:io';

void main(){
/* 
Desarrollar un algoritmo tal que, dado como datos 10 números enteros, obtenga la suma de los 10 númeos enteros. Se mostrara la suma de dichos números 
*/
  int num;
  int suma = 0; //Variable tipo acumulador
  double promedio;
  // ADICIONAR CÓDIGO PARA SACAR EL PROMEDIO
  // MOSTRAR EL MENSAJE: "Digite número 1, digite número 2, ..."
  for(int i = 0; i < 10; i++) {
    print("Digite número "+ (i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    //Se van guardando la suma de los números
    suma = suma + num; //suma += num;
  }
    promedio = suma / 10;
    print("La suma es: $suma");
    print("EL promedio es: $promedio");
}