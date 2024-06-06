import 'dart:io';

void main(List<String> args) {
  List<List<double>> matriz = [];
  double suma = 0;
  int cantFilas=2, cantColumnas=3;

  //Ciclo para llenar la matriz
  for (int i = 0; i < cantFilas; i++) {
    List<double> fila =[];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el número $i,$j");
      fila.add(double.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }
  //Ciclo para recorrer y generar la suma
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[0].length; j++) {
      suma += matriz[i][j];
    }
  }
  //SALIDA
  print(matriz);
  print("La suma de los elementos de la matriz es: $suma");
}