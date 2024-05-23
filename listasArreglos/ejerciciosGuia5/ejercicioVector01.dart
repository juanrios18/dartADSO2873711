import 'dart:io';

void main(List<String> args) {
  /*
  Calcular el promedio de 50 valores almacenados en un vector. Determinar además cuantos mayores que el promedio, imprimir el promedio, el número de datos mayores que el promedio y una lista de valores que el promedio.
  */

  //Se define una lista vacia
  List<double> numeros = [];
  List<double> mayoresProm = [];
  int cantNumeros = 10;
  double num, sumaNumeros=0, promedio;
  //Ciclo para llenar el vector
  for (var i=0; i< cantNumeros; i++) {
    print("Ingrese el numero #${i+1}");
    num = double.parse(stdin.readLineSync()!);
    numeros.add(num);// Se ingresa el numero a la lista
    sumaNumeros += num;
  }
  promedio = sumaNumeros / cantNumeros;
  print(numeros);
  print("El promedio es: $promedio");
  //Ciclo para determinar mayore al promedio
  for (var i = 0; i < numeros.length; i++) {
    if(numeros[i] > promedio){
      mayoresProm.add(numeros[i]);
    }
  }
  print("La cantidad de numeros mayores al promedio es: ${mayoresProm.length}");
  print("La lista de los numeros mayores al promedio es:");
  print(mayoresProm);
}